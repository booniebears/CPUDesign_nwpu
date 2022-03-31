`include "Ctrl_encoding_def.v"
module BTypeOperate (
    input [31:0] rd1,
    input [31:0] rd2,
    input [2:0] BTypeOp,
    // BResult :结果为1时 正确 
    //          结果为0时 错误
    
    output BResult // 结果
);
    reg BResult_r;

    always @(rd1,rd2,BTypeOp) begin
        case (BTypeOp)
            `B_TYPE_BEQ : begin
                if (rd1 - rd2 == 0) BResult_r = 1;
                else BResult_r = 0;
            end
            `B_TYPE_BGTZ : begin
                if (rd1[31]==0 && rd1 != 32'b0) BResult_r = 1;
                else BResult_r = 0;
            end
            `B_TYPE_BLEZ : begin
                if (rd1[31]==1 || rd1 == 32'd0) BResult_r = 1;
                else BResult_r = 0;
            end
            `B_TYPE_BNE  :begin
                if (rd1 != rd2)  BResult_r = 1;
                else BResult_r = 0;
            end
            `B_TYPE_BGEZ  :begin
                if (rd1[31]==0) BResult_r = 1;
                else BResult_r = 0;
            end
            `B_TYPE_BLTZ  :begin
                if (rd1[31]==1) BResult_r = 1;
                else BResult_r = 0;
            end
            default: BResult_r = 1'bx;

        endcase
    end
    assign BResult = BResult_r;
endmodule