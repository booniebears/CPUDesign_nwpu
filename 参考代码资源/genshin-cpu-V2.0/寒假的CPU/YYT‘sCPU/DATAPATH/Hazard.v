`include "Ctrl_encoding_def.v"

module LW_Hazard (
    input [5:0] OP,
    input [5:0] Funct,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] EXE_Rw,
    input EXE_ReadMen,
    input rst,

    output EX_MEM_WB_WriteRegSel,  // EXE MEM WB级 所有寄存器，存储器写使能信号全部关闭 
    output PC_IF_WR // PC,IF写使能
);
    reg PC_IF_WR_r; // PC,IF写使能
    always @(rst,rs,rt,EXE_ReadMen,EXE_Rw,OP) begin
        if (rst == 1'b0) PC_IF_WR_r=1'b1;
        else if (OP == `OP_R_type) begin
            if (EXE_ReadMen == 1'b1 && (rs == EXE_Rw || rt == EXE_Rw)) 
                PC_IF_WR_r=1'b0;  // 产生阻塞 取0
            else 
                PC_IF_WR_r=1'b1;  // 不产生阻塞
        end
        else if (EXE_ReadMen == 1'b1 && (rs == EXE_Rw ) )
            PC_IF_WR_r=1'b0;
        else 
            PC_IF_WR_r=1'b1;
    end

    assign PC_IF_WR = PC_IF_WR_r;
    assign EX_MEM_WB_WriteRegSel = PC_IF_WR_r;
endmodule

module BType_Hazard (
    input [5:0] OP,
    input [4:0] BOpecode,
    input [5:0] Funct,
    input BResult,

    output ID_IFFlush //
   
);
    reg ID_IFFlush_r;
    // ID_IFFlush_r
    always @(OP,BResult,BOpecode,Funct) begin
        if (OP == `OP_BEQ_type && BResult == 1)  ID_IFFlush_r = 1'b0;
        else if (OP == `OP_BGTZ_type && BResult == 1)  ID_IFFlush_r = 1'b0;
        else if (OP == `OP_BLEZ_type && BResult == 1)  ID_IFFlush_r = 1'b0;
        else if (OP == `OP_BEQ_type && BResult == 1)  ID_IFFlush_r = 1'b0;
        else if (OP == `OP_BNE_type && BResult == 1)  ID_IFFlush_r = 1'b0;
        else if ((OP== `OP_BGEZ_BLTZ && BOpecode == `ACRON_BGEZ) &&( BResult == 1'b1 )) ID_IFFlush_r = 1'b0;
        else if ((OP== `OP_BGEZ_BLTZ && BOpecode == `ACRON_BLTZ) &&( BResult == 1'b1 )) ID_IFFlush_r = 1'b0;
        else if (OP == `OP_J_type) ID_IFFlush_r = 1'b0;
        else if (OP == `OP_JAL_type) ID_IFFlush_r = 1'b0;
        else if (OP == `OP_R_type &&( Funct == `FUNCT_JALR || Funct == `FUNCT_JR )) ID_IFFlush_r = 1'b0;
        else ID_IFFlush_r = 1'b1;
    end
assign ID_IFFlush = ID_IFFlush_r;

endmodule