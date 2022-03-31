module PC(clk,rst,PCWr,PC,NPC);
input clk,rst,PCWr;
input[31:2] NPC;
output [31:2] PC;

reg [31:0] PC_r;
reg [1:0] tmp;
always@(posedge clk,negedge rst)
begin
    if (!rst) {PC_r,tmp}=32'h0000_3000;
    else if (PCWr==1'b1) PC_r=NPC;
end

assign PC=PC_r;

endmodule