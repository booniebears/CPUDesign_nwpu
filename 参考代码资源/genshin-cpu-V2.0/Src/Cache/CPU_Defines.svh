/*
 * @Author: 
 * @Date: 2021-03-31 15:16:20
 * @LastEditTime: 2021-04-20 19:53:20
 * @LastEditors: npuwth
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */
 
`ifndef CPU_Defines_SVH
`define CPU_Defines_SVH
`include "CommonDefines.svh"

typedef struct packed {
    logic HardwareInterrupt1;//硬件中断例外1
    logic HardwareInterrupt2;//硬件中断例外2
    logic HardwareInterrupt3;//硬件中断例外3
    logic HardwareInterrupt4;//硬件中断例外4
    logic HardwareInterrupt5;//硬件中断例外5
    logic HardwareInterrupt6;//硬件中断例外6
    // logic SoftwareInterrupt1;//软件中断例外1
    // logic SoftwareInterrupt2;//软件中断例外2

} AsynExceptType;//异步信号类型

typedef struct packed {
	logic Interrupt;	 	  	// 中断信号
    logic WrongAddressinIF;   	// 地址错例外——取�?
    logic ReservedInstruction;	// 保留指令例外
    logic Overflow;           	// 整型溢出例外
    logic Syscall;            	// 系统调用例外
    logic Break;              	// 断点例外
    logic Eret;               	// 异常返回指令
    logic WrWrongAddressinMEM;  // 地址错例外——数据写�?
    logic RdWrongAddressinMEM;  // 地址错例外——数据读�?
} ExceptinPipeType;    //在流水线寄存器之间流动的异常信号

typedef enum logic [6:0] {//之所以把OP_SLL的op都大写是因为enum的值某种意义上算是一种常�?
	/* shift */
	OP_SLL, OP_SRL, OP_SRA, OP_SLLV, OP_SRLV, OP_SRAV,
	/* unconditional jump (reg) */
	OP_JALR,OP_JR,OP_J,
	/* conditional move */
	OP_MOVN, OP_MOVZ,
	/* breakpoint and syscall */
	OP_SYSCALL, OP_BREAK,
	/* HI/LO move */
	OP_MFHI, OP_MFLO, OP_MTHI, OP_MTLO,
	/* multiplication and division */
	OP_MULT, OP_MULTU, OP_DIV, OP_DIVU,
	OP_MADD, OP_MADDU, OP_MSUB, OP_MSUBU, OP_MUL,
	/* add and substract */
	OP_ADD, OP_ADDU, OP_SUB, OP_SUBU,OP_ADDI,OP_ADDIU,
	/* logical */
	OP_AND, OP_OR, OP_XOR, OP_NOR,OP_ANDI,OP_ORI,OP_XORI,
	/* compare and set */
	OP_SLT, OP_SLTU,OP_SLTI,OP_SLTIU,
	/* trap */
	OP_TGE, OP_TGEU, OP_TLT, OP_TLTU, OP_TEQ, OP_TNE,
	/* count bits */
	OP_CLZ, OP_CLO,
	/* branch */
	OP_BLTZ, OP_BGEZ, OP_BLTZAL, OP_BGEZAL,
	OP_BEQ, OP_BNE, OP_BLEZ, OP_BGTZ,
	/* set */
	OP_LUI,
	/* load */
	OP_LB, OP_LH, OP_LWL, OP_LW, OP_LBU, OP_LHU, OP_LWR,
	/* store */
	OP_SB, OP_SH, OP_SWL, OP_SW, OP_SWR,
	/* LL/SC */
	OP_LL, OP_SC,
	/* long jump */
	OP_JAL,
	/* privileged instructions */
	OP_CACHE, OP_ERET, OP_MFC0, OP_MTC0,
	OP_TLBP, OP_TLBR, OP_TLBWI, OP_TLBWR, OP_WAIT,
	/* ASIC */
	`ifdef ENABLE_ASIC
		OP_MFC2, OP_MTC2,
	`endif
	/* FPU */
	`ifdef ENABLE_FPU
		OP_MFC1, OP_MTC1, OP_CFC1, OP_CTC1,
		OP_BC1,
		OP_MOVCI,
		OP_LWC1, OP_SWC1,
		OP_LDC1A, OP_SDC1A, OP_LDC1B, OP_SDC1B,
		OP_FPU_ADD, OP_FPU_SUB, OP_FPU_COND, OP_FPU_NEG,
		OP_FPU_MUL, OP_FPU_DIV, OP_FPU_SQRT, OP_FPU_ABS,
		OP_FPU_CVTW, OP_FPU_CVTS,
		OP_FPU_TRUNC, OP_FPU_ROUND,
		OP_FPU_CEIL, OP_FPU_FLOOR,
		OP_FPU_MOV, OP_FPU_CMOV,
	`endif
	/* invalid */
	OP_INVALID
} InstrType;//一个枚举变量类�? 你可以在译码这个过程中使用，这个我是照抄Tsinghua�?

typedef struct packed {
    logic 		    	sign;//使用0表示unsigned 1表示signed
    logic   [1:0]   	size;//这个表示�? 00 byte 01 half  10 word
	logic               ReadMem;//只有Load才能触发ReadMem
} LoadType;//

typedef struct packed {
    logic 	[1:0]   	size;//这个表示�? 00 byte 01 half  10 word
	logic               DMWr;//只有Store才能触发DMWr
} StoreType;//

typedef struct packed {
    logic 				RFWr;
    logic 				CP0Wr;
    logic 				HIWr;
	logic 				LOWr;
} RegsWrType;//三组寄存器的写信号的打包

typedef struct packed {
	logic 		[2:0] 		branchCode;
	logic 					isBranch;
} BranchType;

interface PipeLineRegsInterface (
	input logic 		   	clk
	// input logic 			rst
    );
	logic					rst;
//PC,in
	logic 	    [31:0] 		IF_NPC;
	logic        		    IF_PCWr;           //PC写使�?
//PC,out
	logic 	    [31:0] 		IF_PC;
//IFID,in
	logic 		[31:0] 		IF_Instr;
	logic 		[31:0] 		IF_PCAdd1;
	logic 		 			IF_IDWr;           //IFID寄存器写使能
	logic        			IFID_Flush;
//IFID,out
	logic 		[31:0] 		ID_Instr;
	logic 		[15:0] 		ID_Imm16;
	logic 		[2:0] 		ID_Sel;
	logic 		[4:0] 		ID_rs;
	logic 		[4:0] 		ID_rt;
	logic 		[4:0] 		ID_rd;
	logic 		[24:0] 		ID_JumpAddr;
	logic 		[31:0] 		ID_PCAdd1;         //PC+1
//IDEXE,in
  	logic 		[31:0] 		ID_BusA;    		// RF 中读取到的数据A
  	logic 		[31:0] 		ID_BusB;	 		// RF 中读取到的数据B
  	logic 		[31:0] 		ID_Imm32;	 		// 符号扩展之后�?32位立即数
  	//logic 	[31:0]  	ID_PCAdd1;
  	//logic 	[4:0]   	ID_rs;		 	// rs 
  	//logic 	[4:0]   	ID_rt;		 	// rt
  	//logic 	[4:0]   	ID_rd;		 	// rd
  	logic 		[4:0]   	ID_ALUOp;	 		// ALU操作�?
  	LoadType        		ID_LoadType;	 	// LoadType信号 
  	StoreType       		ID_StoreType;  	// StoreType信号
  	RegsWrType      		ID_RegsWrType;		// 寄存器写信号打包
  	logic 		[1:0]   	ID_WbSel;          // 选择写回数据
  	logic 		[1:0]   	ID_DstSel;   		// 选择目标寄存�?
  	ExceptinPipeType 		ID_ExceptType;	// 异常类型
	//logic                   ID_IsABranch;
	logic                   ID_IsAImmeJump;
	logic        			IDEXE_Flush;
	logic       [1:0]       ID_ALUSrcA;
	logic       [1:0]       ID_ALUSrcB;
	BranchType              ID_BranchType;
	logic       [31:0]      ID_shamt;
	logic       [1:0]       ID_RegsReadSel;
	logic                   ID_EXEWr;
//IDEXE,out
  	logic 		[31:0] 		EXE_BusA;   		// RF 中读取到的数据A
  	logic 		[31:0] 		EXE_BusB;	 		// RF 中读取到的数据B
  	logic 		[31:0] 		EXE_Imm32;  		// 符号扩展之后�?32位立即数
  	logic 		[31:0] 		EXE_PCAdd1; 		// PC+1
	logic 		[31:0]		EXE_Instr;
  	logic 		[4:0]  		EXE_rs;
  	logic 		[4:0]  		EXE_rt;
  	logic 		[4:0]  		EXE_rd;
	logic 		[4:0]  		EXE_Shamt;         // 移位�?
  	logic 		[4:0]  		EXE_ALUOp;  		
	logic        			EXE_ALUSrcA;
	logic        			EXE_ALUSrcB;
  	LoadType     			EXE_LoadType;   	
  	StoreType    			EXE_StoreType; 	
  	RegsWrType   			EXE_RegsWrType;
  	logic 		[1:0]  		EXE_WbSel;
  	logic 		[1:0]  		EXE_DstSel;
  	ExceptinPipeType 		EXE_ExceptType;// 异常类型
  	ExceptinPipeType 		EXE_ExceptType_final;// 异常类型
	//logic                   EXE_IsABranch;
	logic                   EXE_IsAImmeJump;
	BranchType  			EXE_BranchType;
//EXEMEM,in
    logic 		[31:0] 		EXE_ALUOut;		// ALU运算结果
    logic 		[31:0] 		EXE_OutB;			// 旁路后的数据B
    logic 		[4:0]  		EXE_Dst;			// 选择后的目标寄存�?
	//logic 	[31:0] 		EXE_PCAdd1;
	//LoadType     			EXE_LoadType;   	// Load信号 
  	//StoreType    			EXE_StoreType; 	// Store信号
  	//RegsWrType   			EXE_RegsWrType;
	//ExceptinPipeType EXE_ExceptType;// 异常类型
	//logic        			EXE_WbSel;
	//logic                 EXE_IsABranch;
	//logic                 EXE_IsAImmeJump;
	logic       [1:0]       EXE_RegsReadSel;
    logic 		 			EXEMEM_Flush;
	logic                   EXE_MEMWr;		
//EXEMEM,out					
    logic 		[31:0] 		MEM_ALUOut;			
    logic 		[31:0] 		MEM_PCAdd1;	
	logic 		[31:0]		MEM_Instr;
    logic 		[1:0]  		MEM_WbSel;				
    logic 		[4:0]  		MEM_Dst;
	LoadType     			MEM_LoadType;
	StoreType    			MEM_StoreType;	    			
    RegsWrType   			MEM_RegsWrType;		
    logic 		[31:0] 		MEM_OutB;							
	ExceptinPipeType 		MEM_ExceptType;//异常类型
	ExceptinPipeType 		MEM_ExceptType_final;//异常类型
	logic                   MEM_IsABranch;
	logic                   MEM_IsAImmeJump;
	logic                   MEM_IsDelaySlot;
//EXEWB,in
    //logic 	[31:0] 		MEM_ALUOut;			
    //logic 	[31:0] 		MEM_PCAdd1;			
    //logic 	[1:0]  		MEM_WbSel;				
    //logic 	[4:0]  		MEM_Dst;
	//LoadType     			MEM_LoadType;
	logic 		[31:0] 		MEM_DMOut;
	RegsWrType              MEM_RegsWrType_new;//经过exception solvement的新写使能
	//ExceptinPipeType 		MEM_ExceptType;
	//logic                 MEM_IsABranch;
	//logic                 MEM_IsAImmeJump;
	logic                   MEM_WBWr;
    logic 		 			MEMWB_Flush;
//EXEWB,out
	logic 		[1:0]  		WB_WbSel;        	// 选择写回RF的数�?
	logic 		[31:0] 		WB_PCAdd1;      	// PC+1
	logic 		[31:0]		WB_Instr;
	logic 		[31:0] 		WB_ALUOut;      	// ALU结果
	logic 		[31:0] 		WB_OutB;        	// RF读取的第二个数据值（已经经过旁路），用于MTC0 MTHI MTLO
 	logic 		[31:0] 		WB_DMOut;	     	// DM读取出来的原�?32位数�?
	logic 		[4:0]  		WB_Dst;		 	// 目标寄存器地址
	LoadType     			WB_LoadType;		// 送给EXT2进行lw lh lb lbu lhu 等信号的处理
	RegsWrType   			WB_RegsWrType;     // RF+CP0+HILO寄存器的写信号打�? 
	ExceptinPipeType 		WB_ExceptType; // 异常类型
	logic                   WB_IsABranch;
	logic 					WB_IsAImmeJump;
	logic                   WB_IsDelaySlot;	
  modport PC (
	input  					clk,
	// input  					rst,
	input  					IF_NPC , 
	input  					IF_PCWr,
//output
	output 					IF_PC
  );

  modport IF_ID (
	input  					clk,
	// input  					rst,
	input  					IF_Instr,
	input  					IF_PCAdd1,
	input  					IFID_Flush,
	input  					IF_IDWr,
	//output
	output 					ID_Instr,
	output 					ID_Imm16,
	output 					ID_PCAdd1,
	output 					ID_rs,
	output 					ID_rt,
	output 					ID_rd,
	output 					ID_Sel,
	output 					ID_JumpAddr
  );

  modport ID_EXE (	//IDEXE_modport
    input  					clk,
    // input  					rst,
    input  					ID_BusA,
    input  					ID_BusB,
    input  					ID_Imm32,
    input  					ID_PCAdd1,
	input 					ID_Instr,
    input  					ID_rs,
    input  					ID_rt,
    input  					ID_rd,
    input  					ID_ALUOp,
    input  					ID_LoadType,
    input  					ID_StoreType,
    input  					ID_RegsWrType,
    input  					ID_WbSel,
    input  					ID_DstSel,
    input  					ID_ExceptType,
	input  					IDEXE_Flush,
	//input					ID_IsABranch,
	input 					ID_IsAImmeJump,
	input					ID_ALUSrcA,
	input					ID_ALUSrcB,
	input					ID_BranchType,
	input                   ID_RegsReadSel,
	input                   ID_EXEWr,
    //output	
    output 					EXE_BusA,
    output 					EXE_BusB,
    output 					EXE_Imm32,
    output 					EXE_PCAdd1,
	output 					EXE_Instr,
    output 					EXE_rs,
    output 					EXE_rt,
    output 					EXE_rd,
    output 					EXE_ALUOp,
    output 					EXE_LoadType,
    output 					EXE_StoreType,
    output 					EXE_RegsWrType,
    output 					EXE_WbSel,
    output 					EXE_DstSel,
    output 					EXE_ExceptType,
    output 					EXE_Shamt,
	//output					EXE_IsABranch,
	output 					EXE_IsAImmeJump,
	output					EXE_ALUSrcA,
	output                  EXE_ALUSrcB,
	output					EXE_BranchType,
	output                  EXE_RegsReadSel
  );					

  modport EXE_MEM (  //EXEMEM_modport
    input  					clk,
	// input  					rst,
    input  					EXE_RegsWrType,
    input  					EXE_WbSel,
    input  					EXE_ALUOut,
    input  					EXE_OutB,
    input  					EXE_Dst,
    input  					EXE_PCAdd1,
	input 					EXE_Instr,
    input  					EXE_StoreType,
    input  					EXE_LoadType,
    input  					EXE_ExceptType_final,
    input  					EXEMEM_Flush,
	//input 					EXE_IsABranch,
	input 					EXE_IsAImmeJump,
	input 					EXE_BranchType,
	input                   EXE_MEMWr,
    //output
    output 					MEM_StoreType,
    output 					MEM_ExceptType,
    output 					MEM_LoadType,
    output 					MEM_ALUOut,
    output 					MEM_PCAdd1,
	output 					MEM_Instr,
    output 					MEM_WbSel,
    output 					MEM_Dst,
    output 					MEM_RegsWrType,
    output 					MEM_OutB,
	output 					MEM_IsABranch,
	output 					MEM_IsAImmeJump
  );

  modport MEM_WB (  //MEMWB_modport
    input  					clk,
	// input  					rst,
	input  		            MEMWB_Flush,
	input  					MEM_ExceptType_final,
	input  					MEM_LoadType,
	input  					MEM_ALUOut,
	input  					MEM_PCAdd1,
	input  					MEM_WbSel,
	input  					MEM_Dst,
	input  					MEM_RegsWrType_new,
	input  					MEM_OutB,
	input  					MEM_DMOut,
	input                   MEM_IsABranch,
	input                   MEM_IsAImmeJump,
	input					MEM_IsDelaySlot,
	input                   MEM_Instr,
	input                   MEM_WBWr,
    //output
	output 					WB_WbSel,
	output 					WB_PCAdd1,
	output 					WB_ALUOut,
	output 					WB_OutB,
	output 					WB_DMOut,
	output 					WB_Dst,
	output 					WB_LoadType,
	output 					WB_ExceptType,
	output 					WB_RegsWrType,
	output                  WB_IsABranch,
	output                  WB_IsAImmeJump,
	output					WB_IsDelaySlot,
	output                  WB_Instr
  );

endinterface //interfacename

//interface PipeLineStagesInterface;//也就是IF ID EXE MEM 和WB
    
//endinterface //interfacename


`endif 