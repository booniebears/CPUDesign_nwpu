module PC
#(parameter n = 32)//因为pc地址只需要10位
(
    input clk,
    input rst,
    input PCWr,
    input [n-1:0]NextPC,
    output reg[n-1:0]CurrentPC
);

always @(posedge clk ,posedge rst) begin
    if(rst==1'b1)CurrentPC<=32'h0000_3000;
    else begin
      if(PCWr==1'b1)CurrentPC<=NextPC;
      else CurrentPC<=CurrentPC;
    end
end

endmodule