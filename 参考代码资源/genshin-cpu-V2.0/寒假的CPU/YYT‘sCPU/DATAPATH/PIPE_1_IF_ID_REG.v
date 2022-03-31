module PIPE_1_IF_ID_REG (
    input [31:0] IF_IrOut,
    input [31:2] IF_PcAddOne,
    input ID_IFFlush,
    input clk,
    input IF_ID_WR,

    output [5:0]  ID_OP,     
    output [4:0]  ID_rs,     
    output [4:0]  ID_rt,     
    output [4:0]  ID_rd,        
    output [5:0]  ID_Funct,   
    output [4:0]  ID_Bopcode,   
    output [31:2] ID_PcAddOne,
    output [15:0] ID_Imm16,
    output [25:0] ID_Imm26,
    output [4:0]  ID_S,          //移位字段
    output [31:0] ID_Instr
);
    reg [31:0] ID_IrOut_r;
    reg [31:2] ID_PcAddOne_r;
    reg [31:0] ID_Instr_r;

    always @(posedge clk) begin
         if (IF_ID_WR == 1'b1)begin
            ID_IrOut_r<=IF_IrOut;
            ID_Instr_r<=IF_IrOut;
            ID_PcAddOne_r<=IF_PcAddOne;
        end
        else if (IF_ID_WR == 1'b0)begin
            ID_IrOut_r<=ID_IrOut_r;
            ID_Instr_r<=ID_IrOut_r;
            ID_PcAddOne_r<=ID_PcAddOne_r;
        end
        if (ID_IFFlush == 1'b0)begin
            ID_IrOut_r<=32'b0;
            ID_Instr_r<=32'b0;
            ID_PcAddOne_r<=30'b0;
        end
        
        
    end
    assign ID_OP = ID_IrOut_r[31:26];
    assign ID_rs = ID_IrOut_r[25:21];
    assign ID_rt = ID_IrOut_r[20:16];
    assign ID_rd = ID_IrOut_r[15:11];
    assign ID_Imm16 = ID_IrOut_r[15:0];
    assign ID_Funct = ID_IrOut_r[5:0];
    assign ID_Bopcode = ID_IrOut_r[20:16];
    assign ID_PcAddOne = ID_PcAddOne_r;
    assign ID_Imm26 = ID_IrOut_r[25:0];
    assign ID_S = ID_IrOut_r[10:6];
    assign ID_Instr = ID_Instr_r;
endmodule
