//////////////////////////////////////////////////////////////////////////////////
// Company: Genshin
// Engineer: Juan Jiang
// 
// Create Date: 2021/03/29 15:33:02
// Design Name: 指令译码
// Module Name: Control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 先把它译成InstrType 然后译成控制信号
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "CPU_Defines.svh"

module Control(
    input  logic[31:0] ID_Instr,

    output logic [3:0] ID_ALUOp,	 		// ALUOp ALU符号
  	output LoadType ID_LoadType,	 		// Load信号 （用于判断是sw sh sb还是lb lbu lh lhu lw ）
  	output StoreType ID_StoreType,  		// Store信号（用于判断是sw sh sb还是sb sbu sh shu sw ）
  	output RegsWrType ID_RegsWrType,		// 寄存器写信号打包
  	output logic [1:0] ID_WbSel,    		// 写回信号选择
  	output logic ID_ReadMem,		 		// LoadType 指令在MEM级，产生数据冒险的指令在MEM级检测
  	output logic [1:0] ID_DstSel,   		// 寄存器写回信号选择（Dst）
  	output logic ID_DMWr,			 		// DataMemory 写信号
  	output ExceptinPipeType ID_ExceptType,	// 异常类型

    output logic [1:0]ID_ALUSrcA,
    output logic [1:0]ID_ALUSrcB,
    output logic [1:0]ID_RegsSel,
    output logic [1:0]ID_EXTOp,
    output logic [2:0]ID_BranchCode
    );

    logic [5:0]opcode;
    logic [5:0]funct;
    logic [4:0]rt;
    logic [4:0]rs;
    logic [4:0]rd;
    logic [4:0]shamt;
    InstrType instrType;


    assign opcode = ID_Instr[31:26];
    assign funct = ID_Instr[5:0];
    assign rs = ID_Instr[25:21];
    assign rt = ID_Instr[20:16];
    assign rd = ID_Instr[15:11];
    assign shamt = ID_Instr[10:6];
    // the  work before clasification 

    always_comb begin
        unique casez (opcode)
            6'b000_000:begin// register 
              unique case (funct)

                `EXE_ADD:instrType = OP_ADD;

                `EXE_ADDU:instrType = OP_ADDU;

                `EXE_SUB:instrType = OP_SUB;
                
                `EXE_SUBU:instrType = OP_SUBU;

                `EXE_SLT:instrType = OP_SLT;

                `EXE_SLTU:instrType = OP_SLTU;

                `EXE_DIV:instrType = OP_DIV;

                `EXE_DIVU:instrType = OP_DIVU;

                `EXE_MULT:instrType = OP_MULT;

                `EXE_MULTU:instrType = OP_MULTU;

              

                `EXE_AND:instrType = OP_AND;

                `EXE_NOR:instrType = OP_NOR;

                `EXE_OR:instrType = OP_OR;

                `EXE_XOR:instrType = OP_XOR;



                `EXE_SLLV:begin 
                  if (shamt==5'b00000) begin
                    instrType = OP_SLLV;
                  end
                  else instrType = OP_INVALID;
                  
                end  

                `EXE_SLL:begin 
                  if (rs==5'b00000) begin
                    instrType = OP_SLL;
                  end
                  else instrType = OP_INVALID;
                end 

                `EXE_SRAV:begin 
                  if (shamt==5'b00000) begin
                    instrType = OP_SRAV;
                  end
                  else instrType = OP_INVALID;
                end 

                `EXE_SRA:begin 
                  if (rs==5'b00000) begin
                    instrType = OP_SRA;
                  end
                  else instrType = OP_INVALID;
                end 

                `EXE_SRLV:begin 
                  if (shamt==5'b00000) begin
                    instrType = OP_SRLV;
                  end
                  else instrType = OP_INVALID;
                end

                `EXE_SRL:begin 
                  if (rs==5'b00000) begin
                    instrType = OP_SRL;
                  end
                  else instrType = OP_INVALID;
                end


                `EXE_JR:instrType = OP_JR;

                `EXE_JALR:instrType = OP_JALR;


                `EXE_MFHI:instrType = OP_MFHI;

                `EXE_MFLO:instrType = OP_MFLO;

                `EXE_MTHI:instrType = OP_MTHI;

                `EXE_MTLO:instrType = OP_MTLO;

                `EXE_BREAK:instrType = OP_BREAK;

                `EXE_SYSCALL:instrType = OP_SYSCALL;

                default: begin
                  instrType = OP_INVALID;
                end
              endcase
              end // register

            6'b000_001:begin// some branch
              unique case(rt)

              `EXE_BLTZ:instrType = OP_BLTZ;

              `EXE_BGEZ:instrType = OP_BGEZ;

              `EXE_BLTZAL:instrType = OP_BLTZAL;

              `EXE_BGEZAL:instrType = OP_BGEZAL;
              endcase
              
            end// some branch

            6'b000_01?:begin// some j
              unique case(opcode[0])
                1'b0:instrType = OP_J;
                1'b1:instrType = OP_JAL;
              endcase
            end// some j

            6'b000_1??:begin//some branch 
              unique case(opcode[1:0])
                2'b00:instrType = OP_BEQ;
                2'b01:instrType = OP_BNE;
                2'b10:instrType = OP_BLEZ;
                2'b11:instrType = OP_BGTZ;
              endcase
            end//some branch

            6'b001_???:begin//I Type
              unique case(opcode[2:0])
                3'b000:instrType = OP_ADDI;
                3'b001:instrType = OP_ADDIU;
                3'b010:instrType = OP_SLTI;
                3'b011:instrType = OP_SLTIU;
                3'b100:instrType = OP_ANDI;
                3'b101:instrType = OP_ORI;
                3'b110:instrType = OP_XORI;
                3'b111:InstrType = OP_LUI;
              endcase
            end//I Type

            6'b100_???: begin // load (Reg-Imm)

			        unique case(opcode[2:0])
				        3'b000: instrType = OP_LB;
				        3'b001: instrType = OP_LH;
				        3'b010: instrType = OP_LWL;
				        3'b011: instrType = OP_LW;
				        3'b100: instrType = OP_LBU;
				        3'b101: instrType = OP_LHU;
				        3'b110: instrType = OP_LWR;
				        3'b111: instrType = OP_INVALID;
			        endcase
		        end

            6'b101_???: begin // store (Reg-Imm)

			        unique case(opcode[2:0])
			        	3'b000:  instrType = OP_SB;
			        	3'b001:  instrType = OP_SH;
			        	3'b010:  instrType = OP_SWL;
			        	3'b011:  instrType = OP_SW;
			        	3'b110:  instrType = OP_SWR;
			        	3'b111:  instrType = OP_CACHE;
			        	default: instrType = OP_INVALID;
			        endcase
		        end

            6'b010_000:begin//特权指令
              unique case(instr[25:21])
				        5'b00000: begin
				        	instrType = OP_MFC0;
				        end
				        5'b00100: begin
				        	instrType  = OP_MTC0;
				        end
				        5'b10000: begin
				        	unique case(instr[5:0])
				        		`ifdef COMPILE_FULL_M
				        		6'b000001: instrType = OP_TLBR;
				        		6'b000010: instrType = OP_TLBWI;
				        		6'b000110: instrType = OP_TLBWR;
				        		6'b001000: instrType = OP_TLBP;
				        		6'b100000: instrType = OP_SLL;  // wait
				        		`endif
				        		6'b011000: instrType = OP_ERET;
				        		default: instrType = OP_INVALID;
				        	endcase
				        end
				        default: instrType = OP_INVALID;
			          endcase
            end

            default:begin
                instrType = OP_INVALID;
            end
        endcase
    end
    

  always_comb begin
    unique case (instrType)
      OP_ADD:begin
        ID_ALUOp      = `EXE_ALUOp_ADD;

        ID_ReadMem    = `DonotReadMem;
        ID_LoadType   = '0;

        ID_DMWr       = `WriteDisable;
        ID_StoreType  = '0;

        ID_WbSel      = `WBSel_ALUOut;
        ID_DstSel     = `DstSel_rd;//rd
        ID_RegsWrType = `RegsWrTypeRFEn;
        
        ID_ExceptType = `ExceptionTypeZero;

        ID_ALUSrcA    = `ALUSrcA_Sel_Regs;
        ID_ALUSrcB    = `ALUSrcB_Sel_Regs;
        ID_RegsSel    = `RegsSel_RF;//选择ID级别读出的数据
        ID_EXTOp      = '0;
        ID_BranchCode = '0;//'0表示无关控制信号
      end 

      OP_ADDI:begin
        ID_ALUOp      = `EXE_ALUOp_ADDI;

        ID_ReadMem    = `DonotReadMem;
        ID_LoadType   = '0;

        ID_DMWr       = `WriteDisable;
        ID_StoreType  = '0;

        ID_WbSel      = `WBSel_ALUOut;
        ID_DstSel     = `DstSel_rt;//rt
        ID_RegsWrType = `RegsWrTypeRFEn;
        
        ID_ExceptType = `ExceptionTypeZero;

        ID_ALUSrcA    = `ALUSrcA_Sel_Regs;
        ID_ALUSrcB    = `ALUSrcB_Sel_Imm;
        ID_RegsSel    = `RegsSel_RF;      
        ID_EXTOp      = `EXTOP_SIGN;   
        ID_BranchCode = '0;//'0表示无关控制信号               
      end

      OP_ADDU:begin
        ID_ALUOp      = `EXE_ALUOp_ADDU;//ALU操作

        ID_ReadMem    = `DonotReadMem;//关于Load
        ID_LoadType   = '0;

        ID_DMWr       = `WriteDisable;//关于Store
        ID_StoreType  = '0;

        ID_WbSel      = `WBSel_ALUOut;//关于最后写回RF
        ID_DstSel     = `DstSel_rd;//rt
        ID_RegsWrType = `RegsWrTypeRFEn;
        
        ID_ExceptType = `ExceptionTypeZero;//关于异常

        ID_ALUSrcA    = `ALUSrcA_Sel_Regs;//EXE阶段的两个多选器
        ID_ALUSrcB    = `ALUSrcB_Sel_Regs;
        ID_RegsSel    = `RegsSel_RF;      //ID级别的多选器
        ID_EXTOp      = '0;          //EXT
        ID_BranchCode = '0;//'0表示无关控制信号
      end

    endcase
  end 

    





endmodule
