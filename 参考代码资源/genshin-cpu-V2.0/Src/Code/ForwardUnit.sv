/*
 * @Author: Seddon Shen
 * @Date: 2021-04-02 15:03:56
 * @LastEditTime: 2021-04-25 19:28:34
 * @LastEditors: npuwth
 * @Description: Copyright 2021 GenshinCPU
 * @FilePath: \nontrival-cpu\Src\Code\ForwardUnit.sv
 * 
 */ 

`include "CommonDefines.svh"
`include "CPU_Defines.svh"
module ForwardUnit (
     EXE_rs,EXE_rt,EXE_rd,MEM_Dst,WB_Dst,
     EXE_ForwardA,EXE_ForwardB,//两个选择信号
     WB_RegsWrType,MEM_RegsWrType,EXE_RegsReadSel
);
    //input RegsWrType EXE_RegsWrType;
    input RegsWrType WB_RegsWrType;
    input RegsWrType MEM_RegsWrType;
    input logic [4:0] EXE_rt,EXE_rs,EXE_rd;         // 输入五位宽地址信号
    input logic [4:0] MEM_Dst ,WB_Dst;  //  写回地址
    input logic [1:0] EXE_RegsReadSel;
    output logic [1:0] EXE_ForwardA,EXE_ForwardB;   
    
    reg [1:0] EXE_ForwardA_r,EXE_ForwardB_r;//临时寄存器

    logic MEM_Wr,WB_Wr;//写使能信号
    
    assign MEM_Wr = MEM_RegsWrType.RFWr | MEM_RegsWrType.CP0Wr | MEM_RegsWrType.HIWr | MEM_RegsWrType.LOWr;
    assign WB_Wr = WB_RegsWrType.RFWr | WB_RegsWrType.CP0Wr | WB_RegsWrType.HIWr | WB_RegsWrType.LOWr;

    // 00 选择的是 寄存器中的数据
    // 01 选择的是 MEM_Result中的数据
    // 10 选择的是 WB_Result中的数据
    
    always_comb begin
            if(MEM_RegsWrType.RFWr && MEM_Dst!=5'd0 && EXE_rs == MEM_Dst)begin
                        EXE_ForwardA_r =2'b01;
                    end
            else if (WB_RegsWrType.RFWr && WB_Dst!=5'd0 && EXE_rs == WB_Dst) begin
                        EXE_ForwardA_r =2'b10;
                    end
            else begin
                        EXE_ForwardA_r =2'b00;
            end
    end
    always_comb begin
            unique case (EXE_RegsReadSel)
                2'b00:begin//RF
                    if(MEM_RegsWrType.RFWr && MEM_Dst!=5'd0 && EXE_rt == MEM_Dst)begin
                        EXE_ForwardB_r =2'b01;
                    end
                    else if (WB_RegsWrType.RFWr && WB_Dst!=5'd0 && EXE_rt == WB_Dst) begin
                        EXE_ForwardB_r =2'b10;
                    end
                    else begin
                        EXE_ForwardB_r =2'b00;
                    end
                end
                2'b01:begin//HI
                    EXE_ForwardB_r =2'b00;
                    end
                2'b10:begin//LO
                    EXE_ForwardB_r =2'b00;
                end
                2'b11:begin//CP0
                    if(MEM_RegsWrType.CP0Wr && EXE_rd == MEM_Dst)begin
                        EXE_ForwardB_r =2'b01;
                    end
                    else if (WB_RegsWrType.CP0Wr && EXE_rd == WB_Dst) begin
                        EXE_ForwardB_r =2'b10;
                    end
                    else begin
                        EXE_ForwardB_r =2'b00;
                    end
                end
                default:EXE_ForwardB_r = 2'b00;
            endcase

    end
    
    assign EXE_ForwardA = EXE_ForwardA_r;
    assign EXE_ForwardB = EXE_ForwardB_r;

endmodule
