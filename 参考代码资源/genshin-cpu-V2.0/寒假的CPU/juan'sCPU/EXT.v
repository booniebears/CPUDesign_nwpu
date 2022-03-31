module EXT
#(parameter n = 32,
  parameter m = 16
)
(
    input [m-1:0]EXT_Imm16,
    input [1:0]EXTOp,
    output reg[n-1:0]EXT_Imm32
);

always @(EXT_Imm16,EXTOp) begin
    case (EXTOp)
        2'b00:EXT_Imm32={16'h0000,EXT_Imm16};
        2'b01:begin 
            if(EXT_Imm16[15]==1'b1)EXT_Imm32={16'hffff,EXT_Imm16}; 
            else EXT_Imm32={16'h0000,EXT_Imm16}; 
            end
        default: EXT_Imm32={EXT_Imm16,16'h0000};
    endcase
end


endmodule