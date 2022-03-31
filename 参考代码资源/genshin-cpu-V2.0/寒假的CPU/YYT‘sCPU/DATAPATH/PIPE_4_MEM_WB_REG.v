module PIPE_4_MEM_WB_REG (
    // input [31:0] MEM_DmResult,
    input [31:0] MEM_AluOut,
    input [31:0] MEM_LTypeDmOut,
    input [31:2] MEM_PcAddOne,
    input [1:0]  MEM_WbSel,
    input [4:0]  MEM_Rw,
    input [31:0] MEM_Instr,
    // input [2:0]  MEM_LTypeExtOp,
    // input MEM_LTypeSel,
    input MEM_RfWr,
    input clk,

    // output [31:0] WB_DmResult,
    output [31:0] WB_AluOut,
    output [31:0] WB_LTypeDmOut,
    output [31:2] WB_PcAddOne,
    output [1:0]  WB_WbSel,
    output [4:0]  WB_Rw,
    output [31:0] WB_Instr,
    // output [2:0]  WB_LTypeExtOp,
    // output WB_LTypeSel,
    output WB_RfWr // 
);
    // reg [31:0] WB_DmResult_r;
    reg [31:0] WB_AluOut_r;
    reg [31:0] WB_LTypeDmOut_r;
    reg [31:2] WB_PcAddOne_r;
    reg [1:0]  WB_WbSel_r;
    reg [4:0]  WB_Rw_r;
    reg [31:0] WB_Instr_r;
    // reg [2:0]  WB_LTypeExtOp_r;
    // reg WB_LTypeSel_r;
    reg WB_RfWr_r;  

    always @(posedge clk) begin
        // WB_DmResult_r   <=  MEM_DmResult;      
        WB_AluOut_r     <=  MEM_AluOut;  
        WB_LTypeDmOut_r <= MEM_LTypeDmOut;
        WB_PcAddOne_r   <=  MEM_PcAddOne;      
        WB_WbSel_r      <=  MEM_WbSel;   
        WB_Rw_r         <=  MEM_Rw;
        WB_Instr_r      <=  MEM_Instr;
        WB_RfWr_r       <=  MEM_RfWr;
        // WB_LTypeExtOp_r <=  MEM_LTypeExtOp;
        // WB_LTypeSel_r   <=  MEM_LTypeSel;
    end    
    // assign WB_DmResult   = WB_DmResult_r;
    assign WB_AluOut     = WB_AluOut_r;
    assign WB_LTypeDmOut = WB_LTypeDmOut_r;
    assign WB_PcAddOne   = WB_PcAddOne_r;
    assign WB_WbSel      = WB_WbSel_r;
    assign WB_Rw         = WB_Rw_r;
    assign WB_Instr      = WB_Instr_r;
    assign WB_RfWr       = WB_RfWr_r;
    // assign WB_LTypeExtOp = WB_LTypeExtOp_r;
    // assign WB_LTypeSel   = WB_LTypeSel_r; 

endmodule