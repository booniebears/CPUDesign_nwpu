`include "Ctrl_encoding_def.v"

module EXT(Imm16,EXTop,Imm32,LType);
input [31:0] Imm16;
input [2:0] EXTop;
input [1:0] LType;
output [31:0] Imm32;

reg [31:0] Imm32_r;
wire [7:0] Imm8;
always @(Imm16,EXTop,Imm8) begin
    case (EXTop)
        `EXT_8_SIGNED   : begin
            case (LType[1:0])
                2'b00 :  Imm32_r = {{24{Imm16[7]}},Imm16[7:0]};
                2'b01 :  Imm32_r = {{24{Imm16[15]}},Imm16[15:8]};   
                2'b10 :  Imm32_r = {{24{Imm16[23]}},Imm16[23:16]};
                2'b11 :  Imm32_r = {{24{Imm16[31]}},Imm16[31:24]};
                default: ;
            endcase
        end 
        `EXT_8_ZERO     : begin
            case (LType[1:0])
                2'b00 :  Imm32_r = {{24{1'b0}},Imm16[7:0]};
                2'b01 :  Imm32_r = {{24{1'b0}},Imm16[15:8]};   
                2'b10 :  Imm32_r = {{24{1'b0}},Imm16[23:16]};
                2'b11 :  Imm32_r = {{24{1'b0}},Imm16[31:24]};
                default: ;
            endcase
        end
        `EXT_IMME_ZERO  : begin
            Imm32_r = {{16{1'b0}},Imm16[15:0]};
        end
        `EXT_IMME_SIGN  :begin
            Imm32_r = {{16{Imm16[15]}},Imm16[15:0]};
        end
        `EXT_16_ZERO    :  begin
            case (LType[1])
                1'b0 : Imm32_r = {{16{1'b0}},Imm16[15:0]};
                1'b1 : Imm32_r = {{16{1'b0}},Imm16[31:16]};
                default: ;
            endcase
        end 
        `EXT_16_SIGNED  : begin
             case (LType[1])
                1'b0 : Imm32_r = {{16{Imm16[15]}},Imm16[15:0]};
                1'b1 : Imm32_r = {{16{Imm16[31]}},Imm16[31:16]};
                default: ;
            endcase
        end 
        `EXT_32         : Imm32_r = Imm16;
        `EXT_HIGH_SET   : begin
            Imm32_r = {Imm16[15:0],16'b0};
        end
        default: ;
    endcase
end
assign Imm32 = Imm32_r;

endmodule