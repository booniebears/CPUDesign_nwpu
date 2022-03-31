module ALUControl 
#(parameter n = 32,
  parameter add = 6'b100000,
  parameter addu =6'b100001,
  parameter addi =6'b001000 ,
  parameter addiu =6'b001001 ,
  parameter and_ =6'b100100 ,
  parameter andi =6'b001100 ,
  parameter lui=6'b001111 ,
  parameter nor_ =6'b100111 ,
  parameter or_ =6'b100101 ,
  parameter ori =6'b001101 ,
  parameter sll =6'b000000 ,
  parameter sllv=6'b000100 ,
  parameter slt =6'b101010 ,
  parameter slti =6'b001010 ,
  parameter sltiu=6'b001011 ,
  parameter sltu =6'b101011 ,
  parameter sra =6'b000011 ,
  parameter srav =6'b000111 ,
  parameter srl =6'b000010 ,
  parameter srlv=6'b000110 ,
  parameter sub = 6'b100010,
  parameter subu =6'b100011, 
  parameter xor_ =6'b100110 ,
  parameter xori =6'b001110 
)
(
     input [1:0]ALUOp,
     input [5:0]Opcode,
     input [5:0]funct,    
     output reg [3:0]opcode
);

always @(ALUOp,funct) begin
    if(ALUOp==2'b00)begin
      opcode=4'b0010;//加法 load store计算地址
    end
    else if (ALUOp==2'b01) begin
        opcode=4'b0110;//减法 之前是beq用 现在没有用处； 
    end
    else if(ALUOp==2'b11) begin//i型指令
        case (Opcode)
          addi: opcode=4'b0010;
          addiu:opcode=4'b0010;
          andi: opcode=4'b0000;
          ori:  opcode=4'b0001;
          xori: opcode=4'b1110;
          lui:  opcode=4'b1010;
          slti: opcode=4'b0111;
          sltiu: opcode=4'b1000;
          default: begin end
        endcase
    end

    else  begin//r型指令
        case (funct[5:0])
            add:  opcode=4'b0010;
            and_: opcode=4'b0000;
            nor_: opcode=4'b1101;
            or_ : opcode=4'b0001;
            sll : opcode=4'b1001;
            sllv: opcode=4'b1001;
            slt:  opcode=4'b0111;
            sltu: opcode=4'b1000;
            sra:  opcode=4'b1100;
            srav: opcode=4'b1100;
            srl:  opcode=4'b1011;
            srlv: opcode=4'b1011;
            sub:  opcode=4'b0110;
            xor_: opcode=4'b1110;
            addu: opcode=4'b0010;
            subu: opcode=4'b0110;
            //6'b0100: opcode=4'b0000;
            //6'b0101: opcode=4'b0001;
            default: opcode=4'b0111;
        endcase
    end
end
endmodule