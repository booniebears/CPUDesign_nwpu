module PIPE_3_EXE_MEM_REG  (
    input EXE_DmWr,
    input [1:0]  EXE_WbSel,
    input [31:0] EXE_AluOut,
    input [31:0] EXE_OutB,
    input [4:0]  EXE_Rw,
    input [31:2] EXE_PcAddOne,
    input [1:0]  EXE_SaveType,
    input [31:0] EXE_Instr,
    input [2:0]  EXE_LTypeExtOp,
    input EXE_LTypeSel,
    input EXE_RfWr,
    input clk, 

    output MEM_DmWr,
    output [1:0]  MEM_WbSel,
    output [31:0] MEM_AluOut,
    output [31:0] MEM_OutB,
    output [4:0]  MEM_Rw,
    output [31:2] MEM_PcAddOne,
    output [1:0]  MEM_SaveType,
    output [31:0] MEM_Instr,
    output [2:0]  MEM_LTypeExtOp,
    output MEM_LTypeSel,
    output MEM_RfWr // 

);
    reg MEM_DmWr_r;
    reg [1:0]  MEM_WbSel_r;
    reg [31:0] MEM_AluOut_r;
    reg [31:0] MEM_OutB_r;
    reg [4:0]  MEM_Rw_r;
    reg [31:2] MEM_PcAddOne_r;
    reg [31:0] MEM_Instr_r;
    reg [1:0]  MEM_SaveType_r;
    reg [2:0]  MEM_LTypeExtOp_r;
    reg MEM_LTypeSel_r;
    reg MEM_RfWr_r;


    always @(posedge clk ) begin
        MEM_DmWr_r       <= EXE_DmWr;  
        MEM_WbSel_r      <= EXE_WbSel;     
        MEM_AluOut_r     <= EXE_AluOut;     
        MEM_OutB_r       <= EXE_OutB;      
        MEM_Rw_r         <= EXE_Rw;        
        MEM_PcAddOne_r   <= EXE_PcAddOne; 
        MEM_Instr_r      <= EXE_Instr; 
        MEM_SaveType_r   <= EXE_SaveType;
        MEM_RfWr_r       <= EXE_RfWr;
        MEM_LTypeExtOp_r <= EXE_LTypeExtOp;
        MEM_LTypeSel_r   <= EXE_LTypeSel;
    end
    assign MEM_DmWr       = MEM_DmWr_r;
    assign MEM_WbSel      = MEM_WbSel_r;
    assign MEM_AluOut     = MEM_AluOut_r;
    assign MEM_OutB       = MEM_OutB_r;
    assign MEM_Rw         = MEM_Rw_r;
    assign MEM_PcAddOne   = MEM_PcAddOne_r;
    assign MEM_Instr      = MEM_Instr_r;
    assign MEM_SaveType   = MEM_SaveType_r;
    assign MEM_RfWr       = MEM_RfWr_r;
    assign MEM_LTypeExtOp = MEM_LTypeExtOp_r;
    assign MEM_LTypeSel   = MEM_LTypeSel_r;
    endmodule