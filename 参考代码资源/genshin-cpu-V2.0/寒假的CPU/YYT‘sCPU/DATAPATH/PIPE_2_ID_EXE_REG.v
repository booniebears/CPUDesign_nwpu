module PIPE_2_ID_EX_REG (
    input [3:0] ID_AluOp,    // ALU操作码选择
    input [1:0] ID_WbSel,    // 写回数据选择信号
    input [1:0] ID_RwSel,    // 写回地址选择信号
    input ID_RfWr,           // 寄存器堆写信号
    input ID_DmWr,           // 数据存储器写信号
    input [31:0] ID_busA,
    input [31:0] ID_busB,
    input [31:0] ID_Imm32, 
    input [4:0]  ID_rs,     
    input [4:0]  ID_rt,     
    input [4:0]  ID_rd,  
    input [5:0]  ID_OP,       
    input [5:0]  ID_Funct,   
    input [4:0]  ID_Bopcode,   
    input [31:2] ID_PcAddOne,
    input [4:0]  ID_S,
    input [1:0]  ID_SaveType,
    input [31:0] ID_Instr,
    input [2:0]  ID_LTypeExtOp,
    input ID_LTypeSel,
    input [1:0] ID_VariShiftSel,
    input ID_AluSrcA,
    input ID_AluSrcB,
    input ID_ReadMen,         // LW信号
    input clk,
    // input ID_EX_REG_WR,

    output [3:0] EXE_AluOp,    // ALU操作码选择
    output [1:0] EXE_WbSel,    // 写回数据选择信号
    output [1:0] EXE_RwSel,    // 写回地址选择信号
    output EXE_RfWr,           // 寄存器堆写信号
    output EXE_DmWr,           // 数据存储器写信号
    output [31:0] EXE_busA,
    output [31:0] EXE_busB,
    output [31:0] EXE_Imm32, 
    output [4:0]  EXE_rs,     
    output [4:0]  EXE_rt,     
    output [4:0]  EXE_rd,  
    output [6:0]  EXE_OP,       
    output [5:0]  EXE_Funct,   
    output [4:0]  EXE_Bopcode,   
    output [31:2] EXE_PcAddOne,
    output [4:0]  EXE_S,
    output [1:0]  EXE_SaveType,
    output [31:0] EXE_Instr,
    output [2:0] EXE_LTypeExtOp,
    output EXE_LTypeSel,
    output [1:0] EXE_VariShiftSel,
    output EXE_AluSrcA,
    output EXE_AluSrcB, 
    output EXE_ReadMen            // LW信号
);

    reg [3:0] EXE_AluOp_r;    // ALU操作码选择
    reg [1:0] EXE_WbSel_r;    // 写回数据选择信号
    reg [1:0] EXE_RwSel_r;    // 写回地址选择信号
    reg EXE_RfWr_r;           // 寄存器堆写信号
    reg EXE_DmWr_r;           // 数据存储器写信号
    reg [31:0] EXE_busA_r;
    reg [31:0] EXE_busB_r;
    reg [31:0] EXE_Imm32_r; 
    reg [4:0]  EXE_rs_r;     
    reg [4:0]  EXE_rt_r;     
    reg [4:0]  EXE_rd_r;  
    reg [6:0]  EXE_OP_r;       
    reg [5:0]  EXE_Funct_r;   
    reg [4:0]  EXE_Bopcode_r;   
    reg [31:2] EXE_PcAddOne_r;
    reg [4:0]  EXE_S_r;
    reg [1:0]  EXE_SaveType_r;
    reg [31:0] EXE_Instr_r;
    reg [2:0] EXE_LTypeExtOp_r;
    reg EXE_LTypeSel_r;
    reg [1:0] EXE_VariShiftSel_r;
    reg EXE_AluSrcA_r;
    reg EXE_AluSrcB_r; 
    reg EXE_ReadMen_r;          // LW信号  

    always @(posedge clk) begin
        //if (ID_EX_REG_WR)begin
            EXE_AluOp_r    <= ID_AluOp;
            EXE_WbSel_r    <= ID_WbSel;
            EXE_RwSel_r    <= ID_RwSel;
            EXE_RfWr_r     <= ID_RfWr;
            EXE_DmWr_r     <= ID_DmWr;
            EXE_busA_r     <=  ID_busA;   
            EXE_busB_r     <=  ID_busB;   
            EXE_Imm32_r    <=  ID_Imm32;    
            EXE_rs_r       <=  ID_rs; 
            EXE_rt_r       <=  ID_rt; 
            EXE_rd_r       <=  ID_rd; 
            EXE_OP_r       <=  ID_OP; 
            EXE_Funct_r    <=  ID_Funct;    
            EXE_Bopcode_r  <=  ID_Bopcode;      
            EXE_PcAddOne_r <=  ID_PcAddOne;  
            EXE_S_r        <=  ID_S;
            EXE_SaveType_r <=  ID_SaveType;
            EXE_Instr_r    <= ID_Instr;
            EXE_LTypeExtOp_r  <= ID_LTypeExtOp;
            EXE_LTypeSel_r    <= ID_LTypeSel;
            EXE_VariShiftSel_r<= ID_VariShiftSel;
            EXE_AluSrcA_r <= ID_AluSrcA;
            EXE_AluSrcB_r <= ID_AluSrcB;
            EXE_ReadMen_r <= ID_ReadMen;
        //end
           
    end

    assign EXE_AluOp = EXE_AluOp_r;
    assign EXE_WbSel = EXE_WbSel_r;
    assign EXE_RwSel = EXE_RwSel_r;
    assign EXE_RfWr = EXE_RfWr_r;
    assign EXE_DmWr = EXE_DmWr_r;
    assign EXE_busA = EXE_busA_r;
    assign EXE_busB = EXE_busB_r;
    assign EXE_Imm32 = EXE_Imm32_r;
    assign EXE_rs = EXE_rs_r;
    assign EXE_rt = EXE_rt_r;
    assign EXE_rd = EXE_rd_r;
    assign EXE_OP = EXE_OP_r;
    assign EXE_Funct    = EXE_Funct_r;
    assign EXE_Bopcode  = EXE_Bopcode_r;
    assign EXE_PcAddOne = EXE_PcAddOne_r;
    assign EXE_S  = EXE_S_r;
    assign EXE_SaveType = EXE_SaveType_r;
    assign EXE_Instr    = EXE_Instr_r;
    assign EXE_LTypeExtOp = EXE_LTypeExtOp_r;
    assign EXE_LTypeSel = EXE_LTypeSel_r;
    assign EXE_VariShiftSel = EXE_VariShiftSel_r;
    assign EXE_AluSrcA  = EXE_AluSrcA_r;
    assign EXE_AluSrcB  = EXE_AluSrcB_r;
    assign EXE_ReadMen  = EXE_ReadMen_r;
endmodule