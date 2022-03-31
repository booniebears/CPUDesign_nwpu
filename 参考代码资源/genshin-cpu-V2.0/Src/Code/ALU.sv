/*
 * @Author: Seddon Shen
 * @Date: 2021-03-27 15:31:34
 * @LastEditTime: 2021-04-17 16:00:11
 * @LastEditors: Please set LastEditors
 * @Description: Copyright 2021 GenshinCPU
 * @FilePath: \Code\ALU.sv
 * 
 */
`include "CommonDefines.svh"
`include "CPU_Defines.svh"
module ALU(EXE_ResultA,EXE_ResultB,EXE_ALUOp,EXE_ALUOut,EXE_ExceptType,EXE_ExceptType_new);
input ExceptinPipeType EXE_ExceptType;
input logic[31:0] EXE_ResultA,EXE_ResultB;
input logic[4:0] EXE_ALUOp;
output logic [31:0] EXE_ALUOut;
output ExceptinPipeType EXE_ExceptType_new;
logic [31:0] EXE_ALUOut_r;

always_comb begin
    unique case (EXE_ALUOp)
        `EXE_ALUOp_ADD,`EXE_ALUOp_ADDU :  EXE_ALUOut_r = EXE_ResultA + EXE_ResultB;//可以直接相加
        `EXE_ALUOp_SUB,`EXE_ALUOp_SUBU :  EXE_ALUOut_r = EXE_ResultA - EXE_ResultB;//可以直接相减
        //包含OR和ORI
        `EXE_ALUOp_ORI  :  EXE_ALUOut_r = EXE_ResultA | EXE_ResultB;
        `EXE_ALUOp_NOR  :  EXE_ALUOut_r = ~(EXE_ResultA | EXE_ResultB);
        `EXE_ALUOp_SLL,`EXE_ALUOp_SLLV  :  EXE_ALUOut_r = EXE_ResultB << EXE_ResultA[4:0];//这个时候EXE_Shamt本来就只剩最低四位了，而用Shamt之后其实就本致相同了
        // `EXE_ALUOp_SLLV :  begin
        //     EXE_ALUOut_r = EXE_ResultB << EXE_ResultA[4:0];
        // end
        `EXE_ALUOp_SRL,`EXE_ALUOp_SRLV  :  EXE_ALUOut_r = EXE_ResultB >> EXE_ResultA[4:0];//这个时候EXE_Shamt本来就只剩最低四位了
        // `EXE_ALUOp_SRLV :  begin
        //     EXE_ALUOut_r = EXE_ResultB >> EXE_ResultA[4:0];//离谱的可变长度
        // end
        `EXE_ALUOp_SRA,`EXE_ALUOp_SRAV  :  EXE_ALUOut_r = ($signed(EXE_ResultB)) >>> EXE_ResultA[4:0];//这样写也就导致了ResultA在移位时已经被置为可变长度或者s
        // `EXE_ALUOp_SRAV : begin
        //     EXE_ALUOut_r = ($signed(EXE_ResultB)) >>> EXE_ResultA[4:0];//离谱
        // end 

        //包含SLT和SLTI
        `EXE_ALUOp_SLT   :  begin
            if ($signed(EXE_ResultA) < $signed(EXE_ResultB) )  EXE_ALUOut_r = 32'b0000_0000_0000_0001;
            else  EXE_ALUOut_r = 32'b0;
        end
        
        //包含SLTU和SLTIU
        `EXE_ALUOp_SLTU  : begin
            if ($unsigned(EXE_ResultA) < $unsigned(EXE_ResultB) ) EXE_ALUOut_r = 32'b0000_0000_0000_0001;
            else  EXE_ALUOut_r = 32'b0;
        end
        `EXE_ALUOp_XOR  :  EXE_ALUOut_r = EXE_ResultA ^ EXE_ResultB;
        `EXE_ALUOp_AND  :  EXE_ALUOut_r = EXE_ResultA & EXE_ResultB;
        default: EXE_ALUOut_r = '0;//Do nothing
    endcase
    
end 


// always_comb begin 
//     EXE_ExceptType_new = EXE_ExceptType;
//     EXE_ExceptType_new.Overflow = ((!EXE_ResultA[31] && !EXE_ResultB[31]) && (EXE_ALUOut_r[31]))||((EXE_ResultA[31] && EXE_ResultB[31]) && (!EXE_ALUOut_r[31]));
// end
    assign EXE_ExceptType_new.Interrupt = EXE_ExceptType.Interrupt;
    assign EXE_ExceptType_new.WrongAddressinIF = EXE_ExceptType.WrongAddressinIF;
    assign EXE_ExceptType_new.ReservedInstruction = EXE_ExceptType.ReservedInstruction;
    assign EXE_ExceptType_new.Syscall = EXE_ExceptType.Syscall;
    
    assign EXE_ExceptType_new.Break = EXE_ExceptType.Break;
    assign EXE_ExceptType_new.Eret = EXE_ExceptType.Eret;
    assign EXE_ExceptType_new.WrWrongAddressinMEM = EXE_ExceptType.WrWrongAddressinMEM;
    assign EXE_ExceptType_new.RdWrongAddressinMEM = EXE_ExceptType.RdWrongAddressinMEM;
    assign EXE_ExceptType_new.Overflow = (EXE_ALUOp == `EXE_ALUOp_ADD )&&( ( (!EXE_ResultA[31] && !EXE_ResultB[31]) && (EXE_ALUOut_r[31]) )||( (EXE_ResultA[31] && EXE_ResultB[31]) && (!EXE_ALUOut_r[31]) )) ||
                                         (EXE_ALUOp == `EXE_ALUOp_SUB)&&( ( (!EXE_ResultA[31] && EXE_ResultB[31]) && (EXE_ALUOut_r[31]) )||( (EXE_ResultA[31] && !EXE_ResultB[31]) && (!EXE_ALUOut_r[31]) ));
    assign EXE_ALUOut = EXE_ALUOut_r;
    // TODO: 针对EXE_ALUOP字段，当其为'x的时候，是否需要将overflow的异常置为'0 ,现在是'x
endmodule