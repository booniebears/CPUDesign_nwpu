module dff ( clk, rst,din,dout);
input clk,rst;
input [31:0] din;
output  [31:0]    dout;
reg [31:0] dout_r;

always@(posedge clk,negedge rst)
begin
    if (!rst) dout_r=32'd0;
    else dout_r=din;
end
    
assign dout=dout_r;  // 由于模块与模块之间必须以wire 形式连接 所以需要使用 assign转化
endmodule