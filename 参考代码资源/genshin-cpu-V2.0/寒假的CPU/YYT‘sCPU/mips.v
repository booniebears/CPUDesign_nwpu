`include "Ctrl_encoding_def.v"

module mips (clk,rst);
   parameter LENGTH = 32;

   input   clk;
   input   rst;
//  PC 第一级流水线
   wire [31:2] ID_NpcOut,IF_PC;
   wire [31:2] IF_PcAddOne;
   wire ID_PcSel;    // PC寄存器输入选择信号
   wire [31:2] IF_NPC;
   wire PC_IF_WR;    // PC IF 两级寄存器写使能信号
   wire [31:0] IF_ImOut;

// 第二级流水线
   wire [5:0]  ID_OP;
   wire [4:0]  ID_rs;
   wire [4:0]  ID_rt;
   wire [4:0]  ID_rd;
   wire [5:0]  ID_Funct;
   wire [4:0]  ID_Bopcode;
   wire [31:2] ID_PcAddOne;
   wire [15:0] ID_Imm16;
   wire [25:0] ID_Imm26;
   wire [4:0]  ID_S;
   wire [31:0] ID_SgnImm16;  // 符号扩展的16位立即数

   wire [2:0] ID_BTypeOp;  // B型指令 比较信号选择
   wire [2:0] ID_ExtOp;    // 符号扩展选择信号
   wire [3:0] ID_AluOp;    // ALU操作码选择
   wire  ID_AluSrcA;
   wire  ID_AluSrcB;
   wire [1:0] ID_NpcOp;
   wire [1:0] ID_WbSel;    // 写回数据选择信号
   wire [1:0] ID_SaveType; // SAVE指令类型
   wire [1:0] ID_RwSel;    // 写回地址选择信号
   wire ID_RfWr,ID_RfWr_o;           // 寄存器堆写信号
   wire ID_DmWr,ID_DmWr_o;           // 数据存储器写信号
   wire ID_ReadMen;        // LW信号

   wire [31:0] ID_RfOutB,ID_RfOutA;  // RF读取的数据A B
   wire [1:0] ID_RfForwardA,ID_RfForwardB; // B型比较指令旁路
   wire [31:0] ID_BTypeOpInA,ID_BTypeOpInB; //B型指令比较的数据
   wire ID_BResult; // B型指令结果
   wire ID_IFFlush; // B型指令 清除IF寄存器所有数据
   wire EX_MEM_WB_WriteRegSel; // 关闭dm rf寄存器写信号（发生lw冒险）
   wire [2:0] ID_LTypeExtOp;   // WB级LType操作码 
   wire ID_LTypeSel;
   wire [1:0] ID_VariShiftSel;

// 第三级流水线
   wire [3:0] EXE_AluOp;    // ALU操作码选择
   wire [1:0] EXE_WbSel;    // 写回数据选择信号
   wire [1:0] EXE_RwSel;    // 写回地址选择信号
   wire EXE_RfWr;           // 寄存器堆写信号
   wire EXE_DmWr;           // 数据存储器写信号
   wire [31:0] EXE_busA;
   wire [31:0] EXE_busB;
   wire [31:0] EXE_Imm32; 
   wire [4:0]  EXE_rs;     
   wire [4:0]  EXE_rt;     
   wire [4:0]  EXE_rd;  
   wire [6:0]  EXE_OP;       
   wire [5:0]  EXE_Funct;   
   wire [4:0]  EXE_Bopcode;   
   wire [31:2] EXE_PcAddOne;
   wire [4:0]  EXE_S;
   wire [1:0]  EXE_SaveType;
   wire [2:0]  EXE_LTypeExtOp;
   wire EXE_LTypeSel;
   wire [1:0] EXE_VariShiftSel;
   wire EXE_AluSrcA;
   wire EXE_AluSrcB; 
   wire EXE_ReadMen;          // LW信号

   wire [31:0] EXE_AluOut,EXE_S_Out;
   wire [31:0] EXE_AluInA,EXE_AluInA_o,EXE_AluInB,EXE_AluInB_o;
   wire [1:0] EXE_ForwardA,EXE_ForwardB;
   wire [4:0] EXE_Rw,EXE_S_o;
// 第四级流水线
   wire MEM_DmWr;
   wire [1:0]  MEM_WbSel;
   wire [31:0] MEM_AluOut;
   wire [31:0] MEM_OutB;
   wire [4:0]  MEM_Rw;
   wire [31:2] MEM_PcAddOne;
   wire [1:0]  MEM_SaveType;
   wire [2:0]  MEM_LTypeExtOp;
   wire MEM_LTypeSel;
   wire MEM_RfWr;

   wire [31:0] MEM_DmOut;

// 第五级流水线
   wire [31:0] WB_DmOut;
   wire [31:0] WB_AluOut;
   wire [31:0] MEM_LTypeDmOut;
   wire [31:2] WB_PcAddOne;
   wire [1:0]  WB_WbSel;
   wire [4:0]  WB_Rw;
   wire WB_LTypeSel;
   wire WB_RfWr;

   wire [31:0] WB_Wd;
   wire [31:0] WB_LTypeDmOut;
   wire [2:0]  WB_LTypeExtOp;
   wire [31:0] MEM_LTypeResult;

   // 指令hex码
   wire [31:0] ID_Instr;
   wire [31:0] EXE_Instr;
   wire [31:0] MEM_Instr;
   wire [31:0] WB_Instr;
   // PC信号选择
   MUX2 #(30) U_PcSel (
      .d0(ID_NpcOut),.d1(IF_PcAddOne),.sel2_to_1(ID_PcSel),
      .y(IF_NPC)
   );
   // PC寄存器
   PC U_PC(
      .clk(clk),.rst(rst),.PCWr(PC_IF_WR),.NPC(IF_NPC),
      .PC(IF_PC)
   );
   assign IF_PcAddOne = IF_PC + 1;
   // 指令寄存器
   im_4k U_IM(
     .addr(IF_PC[11:2]),  // PC之后取地址
     .dout(IF_ImOut)      // 读取的32位寄存器
  );
   // 第一级流水线
PIPE_1_IF_ID_REG U_PIPE_1_IF_ID_REG(
     .IF_IrOut(IF_ImOut),.IF_PcAddOne(IF_PcAddOne),.IF_ID_WR(PC_IF_WR),.clk(clk),.ID_IFFlush(ID_IFFlush),
     .ID_OP(ID_OP),              // 指令操作码
     .ID_rs(ID_rs),              // 源寄存器
     .ID_rt(ID_rt),              // 暂存寄存器
     .ID_rd(ID_rd),              // 目标寄存器
     .ID_Funct(ID_Funct),        // 功能字段
     .ID_Bopcode(ID_Bopcode),    // B指令操作码
     .ID_PcAddOne(ID_PcAddOne),  // PC+1
     .ID_Imm16(ID_Imm16),        // Itype 16位立即数
     .ID_Imm26(ID_Imm26),        // Jtype 26位立即数
     .ID_S(ID_S),                // 移位字段
     .ID_Instr(ID_Instr)         // ID级 指令寄存器
  );
   // EXT符号扩展单元
   EXT U_EXT(
      .Imm16(ID_Imm16),
      .EXTop(ID_ExtOp),
      .LType(2'bxx),
      .Imm32(ID_SgnImm16)  // 输出
   );
   // RF register file 寄存器堆
   reg_file U_RF(
      .reg_fileWr(WB_RfWr), // 写使能
      .Ra(ID_rs),.Rb(ID_rt),.Rw(WB_Rw),  // 寄存器
      .busW(WB_Wd),.busB(ID_RfOutB),.busA(ID_RfOutA),  // busW中存放的是带写入数据 
      .clk(clk)
   );
   // 分支指令单元 旁路操作输入A
   // 2'b00 -> 选择RF寄存器结果
   // 2'b01 -> 选择alu结果
   // 2'b10 -> 选择dm结果
   // 2'b11 -> 选择WB结果
   MUX4 #(32) BusA_Sel(
      .d0(ID_RfOutA),.d1(EXE_AluOut),.d2(WB_LTypeDmOut),.d3(WB_Wd),
      .sel4_to_1(ID_RfForwardA),
      .y(ID_BTypeOpInA)
   );
   // 分支指令单元 旁路操作输入B
   MUX4 #(32) BusB_Sel(
      .d0(ID_RfOutB),.d1(EXE_AluOut),.d2(WB_LTypeDmOut),.d3(WB_Wd),
      .sel4_to_1(ID_RfForwardB),
      .y(ID_BTypeOpInB)
   );
   // ALU 旁路选择信号
   RFForward U_RFForward(
    .AluWrAddr(EXE_Rw),
    .DmWrAddr(MEM_Rw),
    .WB_Rw(WB_Rw),
    .rs(ID_rs),
    .rt(ID_rt),
    .AluRfWr(EXE_RfWr),
    .DmRfWr(MEM_RfWr),
    .WB_RfWr(WB_RfWr),

    .RfForwardA(ID_RfForwardA),
    .RfForwardB(ID_RfForwardB)
   );
   // BTypeOperate 
   BTypeOperate U_BTypeOperate(
      .rd1(ID_BTypeOpInA),.rd2(ID_BTypeOpInB),.BTypeOp(ID_BTypeOp),
      .BResult(ID_BResult)
   );
   // NPC寄存器
   NPC U_NPC(
      .PC(ID_PcAddOne),
      .NPC(ID_NpcOut),
      .Imm(ID_Imm26),
      .RFIn(ID_BTypeOpInA),
      .NPCop(ID_NpcOp)  // 下一地址选择操作码
   );
   // CTRL 
   CTRL U_CTRL(
      .OP(ID_OP),.Bopcode(ID_Bopcode),.Funct(ID_Funct),.rs(ID_rs),.rt(ID_rt),.rd(ID_rd),.PC(IF_PcAddOne),.BResult(ID_BResult),
      .ID_PcSel(ID_PcSel),
      .ID_BTypeOp(ID_BTypeOp),
      .ID_ExtOp(ID_ExtOp),
      .ID_AluOp(ID_AluOp),
      .ID_AluSrcA(ID_AluSrcA),
      .ID_AluSrcB(ID_AluSrcB),
      .ID_NpcOp(ID_NpcOp),
      .ID_WbSel(ID_WbSel),
      .ID_SaveType(ID_SaveType),
      .ID_RwSel(ID_RwSel),  
      .ID_RfWr(ID_RfWr_o),
      .ID_DmWr(ID_DmWr_o),
      .ID_ReadMen(ID_ReadMen),
      .ID_LTypeExtOp(ID_LTypeExtOp),   
      .ID_LTypeSel(ID_LTypeSel),
      .ID_VariShiftSel(ID_VariShiftSel)
   );
   // B_Hazard
   // ID_IFFlush : 0 -> 清空IF寄存器
   BType_Hazard U_BType_Hazard(
      .OP(ID_OP),.BOpecode(ID_Bopcode),.Funct(ID_Funct),.BResult(ID_BResult),
      .ID_IFFlush(ID_IFFlush)
   );
   // LW_Hazard
   // EX_MEM_WB_WriteRegSel & PC_IF_WR 发生冒险时，信号为0
   LW_Hazard U_LW_Hazard(
      .OP(ID_OP),.Funct(ID_Funct),.rst(rst),.rs(ID_rs),.rt(ID_rt),.EXE_Rw(EXE_Rw),.EXE_ReadMen(EXE_ReadMen),
      .EX_MEM_WB_WriteRegSel(EX_MEM_WB_WriteRegSel),.PC_IF_WR(PC_IF_WR)
   );
   MUX2 #(1) ID_RfSel(
      .d0(1'b0),.d1(ID_RfWr_o),.sel2_to_1(EX_MEM_WB_WriteRegSel),
      .y(ID_RfWr)
   );
   MUX2 #(1) ID_DmSel(
      .d0(1'b0),.d1(ID_DmWr_o),.sel2_to_1(EX_MEM_WB_WriteRegSel),
      .y(ID_DmWr)
   );
// 第二级流水线
PIPE_2_ID_EX_REG U_PIPE_2_ID_EX_REG(
      .ID_AluOp(ID_AluOp),
      .ID_WbSel(ID_WbSel),
      .ID_RwSel(ID_RwSel),      
      .ID_RfWr(ID_RfWr),
      .ID_DmWr(ID_DmWr),
      .ID_busA(ID_BTypeOpInA),
      .ID_busB(ID_BTypeOpInB),
      .ID_Imm32(ID_SgnImm16),
      .ID_rs(ID_rs),
      .ID_rt(ID_rt),
      .ID_rd(ID_rd),
      .ID_OP(ID_OP),
      .ID_Funct(ID_Funct),
      .ID_Bopcode(ID_Bopcode),
      .ID_PcAddOne(ID_PcAddOne),
      .ID_S(ID_S),
      .ID_SaveType(ID_SaveType),
      .ID_Instr(ID_Instr),
      .ID_LTypeExtOp(ID_LTypeExtOp),
      .ID_LTypeSel(ID_LTypeSel),
      .ID_VariShiftSel(ID_VariShiftSel),
      .ID_AluSrcA(ID_AluSrcA),
      .ID_AluSrcB(ID_AluSrcB),
      .ID_ReadMen(ID_ReadMen),
      .clk(clk),
      // .ID_EX_REG_WR,(ID_EX_REG_WR),

      .EXE_AluOp(EXE_AluOp),
      .EXE_WbSel(EXE_WbSel),
      .EXE_RwSel(EXE_RwSel),
      .EXE_RfWr(EXE_RfWr),
      .EXE_DmWr(EXE_DmWr),
      .EXE_busA(EXE_busA),
      .EXE_busB(EXE_busB),
      .EXE_Imm32(EXE_Imm32),
      .EXE_rs(EXE_rs),
      .EXE_rt(EXE_rt),
      .EXE_rd(EXE_rd),
      .EXE_OP(EXE_OP),
      .EXE_Funct(EXE_Funct),
      .EXE_Bopcode(EXE_Bopcode),
      .EXE_PcAddOne(EXE_PcAddOne),
      .EXE_S(EXE_S),
      .EXE_SaveType(EXE_SaveType),
      .EXE_Instr(EXE_Instr),
      .EXE_LTypeExtOp(EXE_LTypeExtOp),
      .EXE_LTypeSel(EXE_LTypeSel),
      .EXE_VariShiftSel(EXE_VariShiftSel),
      .EXE_AluSrcA(EXE_AluSrcA),
      .EXE_AluSrcB(EXE_AluSrcB),
      .EXE_ReadMen(EXE_ReadMen)
   );


   // 旁路单元 ALU_A  输入信号A选择
   // 1 -> WB
   // 2 -> MEM
   MUX4 #(32) U_ALU_IN_A(
      .d0(EXE_busA),.d1(WB_Wd),.d2(MEM_AluOut),
      .sel4_to_1(EXE_ForwardA),
      .y(EXE_AluInA_o)
   );
   // 旁路单元 ALU_B  输入信号B选择
   // 1 -> WB
   // 2 -> MEM
   MUX4 #(32) U_ALU_IN_B(
      .d0(EXE_busB),.d1(WB_Wd),.d2(MEM_AluOut),
      .sel4_to_1(EXE_ForwardB),
      .y(EXE_AluInB_o)
   );
   // 旁路选择信号产生
   ALU_Forward U_ALU_Forward(
      .rs(EXE_rs),.rt(EXE_rt),.EX_MEM_Rf_RfWr(MEM_RfWr),.MEM_WB_RfWr(WB_RfWr),.EX_MEM_rw(MEM_Rw),.MEM_WB_rw(WB_Rw),
      .ForwardA(EXE_ForwardA),.ForwardB(EXE_ForwardB)
   );
   // 移位量选择（variable or fixed）
   // ID_VariShiftSel
   // 0 -> s (fixed shift)
   // 1 -> variable shift 
   MUX4 #(5) U_SHIFT_AMOUT(
      .d0(EXE_S),.d1(EXE_AluInA_o[4:0]),.d3(5'd16),.sel4_to_1(EXE_VariShiftSel),
      .y(EXE_S_o)
   );
   assign EXE_S_Out = {27'b0,EXE_S_o};
   //选择寄存器结果，或位移数量
   // 0-> rs（已经旁路）
   // 1-> S 位移长度 （已经扩展）
   MUX2 #(32) U_ALU_SWTICH_A(
      .d0(EXE_AluInA_o),.d1(EXE_S_Out),.sel2_to_1(EXE_AluSrcA),
      .y(EXE_AluInA)
   );
   // 选择立即数/rt
   // 0-> rt（已经旁路）
   // 1-> IMM（已经扩展）
   MUX2 #(32) U_ALU_SWTICH_B(
      .d0(EXE_AluInB_o),.d1(EXE_Imm32),.sel2_to_1(EXE_AluSrcB),
      .y(EXE_AluInB)
   );
   // ALU模块
   ALU U_ALU(
      .busA(EXE_AluInA),.busB(EXE_AluInB),.ALUop(EXE_AluOp),.s(EXE_S_o),
      .ALUout(EXE_AluOut)
   );
   // Rw模块选择
   MUX4 #(5) RwSel(
      .d0(EXE_rt),.d1(EXE_rd),.d2(5'd31),.sel4_to_1(EXE_RwSel),
      .y(EXE_Rw)
   );
//第三级流水线
PIPE_3_EXE_MEM_REG U_PIPE_3_EXE_MEM_REG(
      .EXE_DmWr(EXE_DmWr),
      .EXE_WbSel(EXE_WbSel),
      .EXE_AluOut(EXE_AluOut),
      .EXE_OutB(EXE_AluInB_o),
      .EXE_Rw(EXE_Rw),
      .EXE_PcAddOne(EXE_PcAddOne),   
      .EXE_SaveType(EXE_SaveType),
      .EXE_Instr(EXE_Instr),
      .EXE_LTypeExtOp(EXE_LTypeExtOp),
      .EXE_LTypeSel(EXE_LTypeSel),
      .EXE_RfWr(EXE_RfWr),
      .clk(clk),

      .MEM_DmWr(MEM_DmWr),
      .MEM_WbSel(MEM_WbSel),
      .MEM_AluOut(MEM_AluOut),
      .MEM_OutB(MEM_OutB),
      .MEM_Rw(MEM_Rw),
      .MEM_PcAddOne(MEM_PcAddOne),
      .MEM_Instr(MEM_Instr),
      .MEM_LTypeExtOp(MEM_LTypeExtOp),
      .MEM_SaveType(MEM_SaveType),
      .MEM_LTypeSel(MEM_LTypeSel),
      .MEM_RfWr(MEM_RfWr)
);

  // DATA MEMORY 
   dm_4k U_DM ( 
      .addr(MEM_AluOut[11:0]), .din(MEM_OutB), .DMWr(MEM_DmWr), .clk(clk), .dout(MEM_DmOut),.SaveType(MEM_SaveType)
   );


   // ID_LTypeSel_r
   // 0-> Lui type
   // 1-> Dmresult
   MUX2 #(32) U_LType_EXT_IN(
      .d0(MEM_AluOut),.d1(MEM_DmOut),.sel2_to_1(MEM_LTypeSel),
      .y(MEM_LTypeResult)
   );
   EXT U_LWEXT(
      .Imm16(MEM_LTypeResult),
      .EXTop(MEM_LTypeExtOp),
      .LType(MEM_AluOut[1:0]),
      .Imm32(MEM_LTypeDmOut)  // 输出
   );
// 第四级流水线
PIPE_4_MEM_WB_REG U_PIPE_4_MEM_WB_REG(
      // .MEM_DmResult(MEM_DmOut),
      .MEM_AluOut(MEM_AluOut),
      .MEM_LTypeDmOut(MEM_LTypeDmOut),
      .MEM_PcAddOne(MEM_PcAddOne),
      .MEM_WbSel(MEM_WbSel),
      .MEM_Rw(MEM_Rw),
      .MEM_Instr(MEM_Instr),
      // .MEM_LTypeExtOp(MEM_LTypeExtOp),
      // .MEM_LTypeSel(MEM_LTypeSel),
      .MEM_RfWr(MEM_RfWr),
      .clk(clk),

      // .WB_DmResult(WB_DmOut),
      .WB_AluOut(WB_AluOut),
      .WB_LTypeDmOut(WB_LTypeDmOut),
      .WB_PcAddOne(WB_PcAddOne),
      .WB_WbSel(WB_WbSel),
      .WB_Rw(WB_Rw),
      .WB_Instr(WB_Instr),
      // .WB_LTypeExtOp(WB_LTypeExtOp),
      // .WB_LTypeSel(WB_LTypeSel),
      .WB_RfWr(WB_RfWr)
);

   MUX4 #(32) WdSel(
      .d0(WB_LTypeDmOut),.d1(WB_AluOut),.d2(WB_PcAddOne),.sel4_to_1(WB_WbSel),
      .y(WB_Wd)
   ); 


endmodule 