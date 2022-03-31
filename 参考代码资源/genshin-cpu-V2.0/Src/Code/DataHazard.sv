`include "CommonDefines.svh"
`include "CPU_Defines.svh"
module DataHazard (
    input logic [4:0] ID_rs,//ok
    input logic [4:0] ID_rt,//ok
    input logic [1:0] ID_rsrtRead,//[1]是rs [0]是rt 1'b1的时候确实是读
    input logic [4:0] EXE_rt,
    input logic EXE_ReadMEM,
    input logic EXE_isStore,
    input logic ID_isLoad,

    output logic IF_PCWr,
    output logic IF_IDWr,
    output logic IDEXE_Flush

);
    logic IF_IDWr_r; // PC,IF写使能
    logic IF_PCWr_r;
    always_comb begin
            if ( (EXE_ReadMEM == 1'b1 && ((ID_rs == EXE_rt && ID_rsrtRead[1] == 1'b1) || 
                 (ID_rt == EXE_rt && ID_rsrtRead[0] == 1'b1)) )  ) begin
                IF_IDWr_r=1'b0;  // 产生阻塞
                IF_PCWr_r=1'b0;
                IDEXE_Flush=1'b1;
            end
            else begin
                IF_IDWr_r=1'b1;  // 1的时候可以写
                IF_PCWr_r=1'b1;
                IDEXE_Flush=1'b0;
            end    

    end

    assign IF_IDWr = IF_IDWr_r;
    assign IF_PCWr = IF_PCWr_r;


endmodule
