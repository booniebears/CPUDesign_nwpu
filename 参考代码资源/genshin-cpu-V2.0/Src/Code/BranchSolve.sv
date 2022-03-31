/*
 * @Author: Seddon Shen
 * @Date: 2021-04-02 15:25:55
 * @LastEditTime: 2021-04-10 19:09:59
 * @LastEditors: Johnson Yang
 * @Description: Copyright 2021 GenshinCPU
 * @FilePath: \Coded:\cpu\nontrival-cpu\nontrival-cpu\Src\Code\BranchSolve.sv
 * 
 */
`include "CommonDefines.svh"
`include "CPU_Defines.svh"
module BranchSolve(
    EXE_BranchType,
    EXE_OutA,
    EXE_OutB,
    IFID_Flush
);
    input BranchType EXE_BranchType;
    input logic[31:0] EXE_OutA;
    input logic[31:0] EXE_OutB;
    output reg IFID_Flush;

    always_comb begin
        unique case (EXE_BranchType.branchCode)
            `BRANCH_CODE_BEQ:
                if ($signed(EXE_OutA) == $signed(EXE_OutB) && EXE_BranchType.isBranch)  begin
                    IFID_Flush = `FlushEnable;
                end
                else begin
                    IFID_Flush = `FlushDisable;
                end
            `BRANCH_CODE_BNE:
                if ($signed(EXE_OutA) != $signed(EXE_OutB) && EXE_BranchType.isBranch) begin
                    IFID_Flush = `FlushEnable;
                end
                else begin
                    IFID_Flush = `FlushDisable;
                end
            `BRANCH_CODE_BGE:
                if ($signed(EXE_OutA) >= 0 && EXE_BranchType.isBranch) begin
                    IFID_Flush = `FlushEnable;
                end
                else begin
                    IFID_Flush = `FlushDisable;
                end
            `BRANCH_CODE_BGT:
                if ($signed(EXE_OutA) > 0 && EXE_BranchType.isBranch) begin
                    IFID_Flush = `FlushEnable;
                end
                else begin
                    IFID_Flush = `FlushDisable;
                end
            `BRANCH_CODE_BLE:
                if ($signed(EXE_OutA) <= 0 && EXE_BranchType.isBranch) begin
                    IFID_Flush = `FlushEnable;
                end
                else begin
                    IFID_Flush = `FlushDisable;
                end
            `BRANCH_CODE_BLT:
                if ($signed(EXE_OutA) < 0 && EXE_BranchType.isBranch) begin
                    IFID_Flush = `FlushEnable;
                end
                else begin
                    IFID_Flush = `FlushDisable;
                end
            `BRANCH_CODE_JR:
                if ( EXE_BranchType.isBranch) begin
                    IFID_Flush = `FlushEnable;
                end
                else begin
                    IFID_Flush = `FlushDisable;
                end
            default: begin
                IFID_Flush = `FlushDisable;
             end
        endcase
    end

endmodule