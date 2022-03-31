module Control
#(
    parameter sll =6'b000000 ,   
    parameter sra =6'b000011 ,
    parameter srl =6'b000010 ,
    parameter jal = 6'b000011,//jal opcode
    parameter r = 6'b000000,//r

    parameter lw =6'b100011 ,//lw
    parameter lb=6'b100_000 ,//lb
    parameter lbu=6'b100_100 ,//lbu
    parameter lh=6'b100_001 ,//lh
    parameter lhu=6'b100_101 ,//lhu

    parameter sw =6'b101_011,//sw
    parameter sb =6'b101_000,
    parameter sh =6'b101_001,

    parameter beq =6'b000100 //beq
)
(
    //input clk,
    //input rst,
    //input ze,//ALU的判断branch是否成立位
    input [5:0]Opcode,//首字母大写的Opcode表示instr的Opcode
    input [5:0]funct,
    //input [5:0]bz,//bgez bltz
    //output reg IRWr,
    //output reg PCWr,

    //ID级别控制信号
    output reg [1:0]EXTOp,

    output reg load,//是不是load指令
    output reg [2:0]EXT_MEM,// 000 byte(signed)  001 byte(unsigned)  010 half(signed) 011 half(unsigned) 100 lw 
    output reg [1:0]dm_choose,//00 sb 01 sh 10 sw 给dm 加上的信号

    //EXE控制信号
    output reg shamtSel,//是否是位移 太屑了 位移指令
    output reg[1:0]ALUOp,//送入ALUControl二级控制unit
    output reg ALUSel,//是否选择是立即数 EXE级别的控制信号
    output reg[1:0]RegDst,//在EXE阶段的选择写入的寄存器编号 写入寄存器的选择，jal选31，rt与rd之分

    //MEM级别的控制信号
    output reg DMWr,

    //WB级别的控制信号
    output reg RFWr,
    output reg [1:0]RFDataSel,//送入寄存器的数据的选择 对于jal是PC的值和jalr，或者是ALU的值或者是内存读出的值

    //给NPC的控制信号
    output reg branch,//是分支指令
    output reg j,//是j 或者jal
    output reg jr//是jr 或者jalr


);

always @(Opcode,funct) begin
  case (Opcode)

    r: begin
        ALUOp=2'b10;//选择r型
        ALUSel=1'b0;//选择从寄存器读出来的
        RegDst=2'b01;//选rd
        RFDataSel=2'b01;
        DMWr=1'b0;
        load=1'b0;
        branch=1'b0;
        j=1'b0;
      if (funct[5:0]==6'b001001) begin //如果是jalr 
        jr=1'b1;
        RFWr=1'b1;
        RFDataSel=2'b00;
        shamtSel=1'b0;
      end
      else if(funct[5:0]==6'b001000) begin //如果是jr
        jr=1'b1;
        RFWr=1'b0;
        shamtSel=1'b0;
      end   
      else if (funct[5:0]==sll  ) begin
        shamtSel=1'b1;
        RFWr=1'b1;
        RFDataSel=2'b01;
        jr=1'b0;        
      end
      else if (funct[5:0]==sra) begin
        shamtSel=1'b1;
        RFWr=1'b1;
        RFDataSel=2'b01;
        jr=1'b0;          
      end
      else if (funct[5:0]==srl) begin
        shamtSel=1'b1;
        RFWr=1'b1;
        RFDataSel=2'b01;
        jr=1'b0;          
      end
      else begin
        RFWr=1'b1;
        RFDataSel=2'b01;
        jr=1'b0;
        shamtSel=1'b0;
      end
    end

    6'b000_001:begin//是BLTZ 和BGEZ 因为是分支结构所以都不用alu计算 也不写入
      DMWr=1'b0;
      RFWr=1'b0;
      j=1'b0;
      jr=1'b0;
      branch=1'b1;
      EXTOp=2'b01;//符号扩展
      load=1'b0;
    end

    6'b000_010:begin//是jump
      DMWr=1'b0;
      RFWr=1'b0;
      j=1'b1;
      jr=1'b0;
      branch=1'b0;    
      load=1'b0;  
    end

    6'b000_011:begin//是jal
      RegDst=2'b00;//选31
      DMWr=1'b0;
      RFWr=1'b1;
      RFDataSel=2'b00;//表示是PC的值

      j=1'b1;
      jr=1'b0;
      branch=1'b0;
      load=1'b0;
    end

    lw:begin//如果是load指令
      EXTOp=2'b01;//符号扩展
      EXT_MEM=3'b100;
      ALUOp=2'b00;
      ALUSel=1'b1;//立即数
      RegDst=2'b10;//选择rt
      DMWr=1'b0;
      RFWr=1'b1;
      RFDataSel=2'b10;
      branch=1'b0;
      j=1'b0;
      jr=1'b0;
      shamtSel=1'b0;
      load=1'b1;
    end

    lb:begin
      EXTOp=2'b01;//符号扩展
      EXT_MEM=3'b000;
      ALUOp=2'b00;
      ALUSel=1'b1;//立即数
      RegDst=2'b10;//选择rt
      DMWr=1'b0;
      RFWr=1'b1;
      RFDataSel=2'b10;
      branch=1'b0;
      j=1'b0;
      jr=1'b0;
      shamtSel=1'b0;
      load=1'b1;
    end

    lbu:begin
      EXTOp=2'b01;//符号扩展
      EXT_MEM=3'b001;
      ALUOp=2'b00;
      ALUSel=1'b1;//立即数
      RegDst=2'b10;//选择rt
      DMWr=1'b0;
      RFWr=1'b1;
      RFDataSel=2'b10;
      branch=1'b0;
      j=1'b0;
      jr=1'b0;    
      shamtSel=1'b0;
      load=1'b1;        
    end

    lh:begin
      EXTOp=2'b01;//符号扩展
      EXT_MEM=3'b010;
      ALUOp=2'b00;
      ALUSel=1'b1;//立即数
      RegDst=2'b10;//选择rt
      DMWr=1'b0;
      RFWr=1'b1;
      RFDataSel=2'b10;
      branch=1'b0;
      j=1'b0;
      jr=1'b0; 
      shamtSel=1'b0;
      load=1'b1;
    end

    lhu:begin
      EXTOp=2'b01;//符号扩展
      EXT_MEM=3'b011;
      ALUOp=2'b00;
      ALUSel=1'b1;//立即数
      RegDst=2'b10;//选择rt
      DMWr=1'b0;
      RFWr=1'b1;
      RFDataSel=2'b10;
      branch=1'b0;
      j=1'b0;
      jr=1'b0; 
      shamtSel=1'b0;
      load=1'b1;
    end    

    sw:begin
      EXTOp=2'b01;//符号扩展
      dm_choose=2'b10;
      ALUOp=2'b00;
      ALUSel=1'b1;
      RFWr=1'b0;
      DMWr=1'b1;
      branch=1'b0;
      j=1'b0;
      jr=1'b0; 
      shamtSel=1'b0;
      load=1'b0;
      RFDataSel=2'b01;
    end
    sb:begin
      EXTOp=2'b01;//符号扩展
      dm_choose=2'b00;
      ALUOp=2'b00;
      ALUSel=1'b1;
      RFWr=1'b0;
      DMWr=1'b1;
      branch=1'b0;
      j=1'b0;
      jr=1'b0;       
      shamtSel=1'b0;
      load=1'b0;
      RFDataSel=2'b01;
    end
    sh:begin
      EXTOp=2'b01;//符号扩展
      dm_choose=2'b01;
      ALUOp=2'b00;
      ALUSel=1'b1;
      RFWr=1'b0;
      DMWr=1'b1;
      branch=1'b0;
      j=1'b0;
      jr=1'b0;    
      shamtSel=1'b0; 
      load=1'b0;   
      RFDataSel=2'b01;
    end

    default: begin
      if (Opcode[5:2]==4'b0001)
        begin// beq bne blez bgtz
          DMWr=1'b0;
          RFWr=1'b0;
          j=1'b0;
          jr=1'b0;
          branch=1'b1;     
          EXTOp=2'b01;
          shamtSel=1'b0;  
          load=1'b0;  
        end
      else if(Opcode[5:3]==3'b001)
        begin//所有的i型指令
          ALUOp=2'b11;//i型指令
          ALUSel=1'b1;//选择立即数
          RegDst=2'b10;

          DMWr=1'b0;
          j=1'b0;
          jr=1'b0;
          branch=1'b0;
          
          RFWr=1'b1;
          RFDataSel=2'b01;//写入寄存器的数据来自alu计算结果
          shamtSel=1'b0;
          load=1'b0;
          if(Opcode[5:2]==4'b0011)
            begin
              EXTOp=2'b00;
            end
          else 
            begin
              EXTOp=2'b01;
            end

        end

      else begin
        
      end

    end

  endcase
end




endmodule