`include "define.v"
module ctrl(instr,compare_result,overflow,IFID_clear,ID_flush,EX_flush,NPCSrc,ctrlop,zero_sign);

  input [31:0] instr;
  input [2:0] compare_result;
  input overflow;
  output reg IFID_clear;
  output reg ID_flush;
  output reg EX_flush;
  output reg [2:0] NPCSrc;
  output reg [15:0] ctrlop;
  output reg zero_sign;

always@(instr,compare_result,overflow)
  if(overflow)
    begin
      IFID_clear = 1'b1;
      ID_flush = 1'b1;
      EX_flush = 1'b1;
      NPCSrc = 3'b100;
    end
  else
    case(instr[31:26])
      6'b00_0000:
        if(instr[5:0] == 6'b00_1000 || instr[5:0] == 6'b00_1001) //jr,jalr
          begin
            IFID_clear = 1'b1;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b011;
          end
        else
          begin
            IFID_clear = 1'b0;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b000;
          end
      6'b00_0100:  //beq
        if(compare_result[2] == 1'b1)
          begin
            IFID_clear = 1'b1;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b001;
          end
        else
          begin
            IFID_clear = 1'b0;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b000;
          end
      6'b00_0101:  //bne
        if(compare_result[2] == 1'b0)
          begin
            IFID_clear = 1'b1;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b001;
          end
        else
          begin
            IFID_clear = 1'b0;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b000;
          end
      6'b00_0110:  //blez
        if(compare_result[1:0]==2'b01||compare_result[1:0]==2'b10)
          begin
            IFID_clear = 1'b1;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b001;
          end
        else
          begin
            IFID_clear = 1'b0;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b000;
          end
      6'b00_0111:  //bgtz
        if(compare_result[1:0]==2'b00)
          begin
            IFID_clear = 1'b1;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b001;
          end
        else
          begin
            IFID_clear = 1'b0;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b000;
          end
      6'b00_0001:  //bltz or bgez
        if(instr[20:16]==6'b0&&compare_result[1:0]==2'b10)
          begin
            IFID_clear = 1'b1;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b001;
          end
        else if(instr[20:16]==6'b000001&&(compare_result[1:0]==2'b00||compare_result[1:0]==2'b01))
          begin
            IFID_clear = 1'b1;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b001;
          end
        else
          begin
            IFID_clear = 1'b0;
            ID_flush = 1'b0;
            EX_flush = 1'b0;
            NPCSrc = 3'b000;
          end
      6'b00_0010:  //j
        begin
          IFID_clear = 1'b1;
          ID_flush = 1'b0;
          EX_flush = 1'b0;
          NPCSrc = 3'b010;
        end
      6'b00_0011:  //jal
        begin
          IFID_clear = 1'b1;
          ID_flush = 1'b0;
          EX_flush = 1'b0;
          NPCSrc = 3'b010;
        end
      default:
        begin
          IFID_clear = 1'b0;
          ID_flush = 1'b0;
          EX_flush = 1'b0;
          NPCSrc = 3'b000;
        end
    endcase

always@(instr)
  case(instr[31:26])
    6'b00_0000:
    begin
      zero_sign = 1'b0;
      case(instr[5:0])
        6'b10_0000:ctrlop = 16'b0_01_0_0010_00_0_0_1_001;  //add
        6'b10_0001:ctrlop = 16'b0_01_0_1100_00_0_0_1_001;  //addu
        6'b10_0010:ctrlop = 16'b0_01_0_0011_00_0_0_1_001;  //sub
        6'b10_0011:ctrlop = 16'b0_01_0_1101_00_0_0_1_001;  //subu
        6'b10_1010:ctrlop = 16'b0_01_0_0110_00_0_0_1_001;  //slt
        6'b10_1011:ctrlop = 16'b0_01_0_0111_00_0_0_1_001;  //sltu
        6'b00_0000:ctrlop = 16'b0_01_0_1000_00_0_0_1_001;  //sll
        6'b00_0010:ctrlop = 16'b0_01_0_1001_00_0_0_1_001;  //srl
        6'b00_0011:ctrlop = 16'b0_01_0_1010_00_0_0_1_001;  //sra
        6'b00_0100:ctrlop = 16'b1_01_0_1000_00_0_0_1_001;  //sllv
        6'b00_0110:ctrlop = 16'b1_01_0_1001_00_0_0_1_001;  //srlv
        6'b00_0111:ctrlop = 16'b1_01_0_1010_00_0_0_1_001;  //srav
        6'b10_0100:ctrlop = 16'b0_01_0_0000_00_0_0_1_001;  //and
        6'b10_0101:ctrlop = 16'b0_01_0_0001_00_0_0_1_001;  //or
        6'b10_0110:ctrlop = 16'b0_01_0_0100_00_0_0_1_001;  //xor
        6'b10_0111:ctrlop = 16'b0_01_0_0101_00_0_0_1_001;  //nor
        6'b00_1000:ctrlop = 16'b0_00_0_0000_00_0_0_0_000;  //jr
        6'b00_1001:ctrlop = 16'b0_01_0_0000_00_0_0_1_000;  //jalr
        default:ctrlop = 16'b0;
      endcase
    end
    6'b00_1000:  //addi
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_0010_00_0_0_1_001; 
    end
    6'b00_1001:  //addiu
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_00_0_0_1_001;
    end
    6'b00_1100:  //andi
    begin
      zero_sign = 1'b0;
      ctrlop = 16'b0_00_1_0000_00_0_0_1_001;
    end
    6'b00_1101:  //ori
    begin
      zero_sign = 1'b0;
      ctrlop = 16'b0_00_1_0001_00_0_0_1_001;
    end
    6'b00_1110:  //xori
    begin
      zero_sign = 1'b0;
      ctrlop = 16'b0_00_1_0100_00_0_0_1_001;
    end
    6'b00_1111:  //lui
    begin
      zero_sign = 1'b0;
      ctrlop = 16'b0_00_1_1011_00_0_0_1_001;
    end
    6'b00_1010:  //slti
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_0110_00_0_0_1_001;
    end
    6'b00_1011:  //sltiu
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_0111_00_0_0_1_001;
    end

    6'b10_0000:  //lb
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_00_1_0_1_101;
    end
    6'b10_0100:  //lbu
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_00_1_0_1_110;
    end
    6'b10_0001:  //lh
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_00_1_0_1_011;
    end
    6'b10_0101:  //lhu
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_00_1_0_1_100;
    end
    6'b10_0011:  //lw
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_00_1_0_1_010;
    end
    6'b10_1000:  //sb
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_10_0_1_0_000;
    end
    6'b10_1001:  //sh
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_01_0_1_0_000;
    end
    6'b10_1011:  //sw
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_1_1100_00_0_1_0_000;
    end
    6'b00_0100:  //beq
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_0_0000_00_0_0_0_000;
    end
    6'b00_0101:  //bne
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_0_0000_00_0_0_0_000;
    end
    6'b00_0110:  //blez
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_0_0000_00_0_0_0_000;
    end
    6'b00_0111:  //bgtz
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_0_0000_00_0_0_0_000;
    end
    6'b00_0001:  //bltz or bgez
    begin
      zero_sign = 1'b1;
      ctrlop = 16'b0_00_0_0000_00_0_0_0_000;
    end
    6'b00_0010:  //j
    begin
      zero_sign = 1'b0;
      ctrlop = 16'b0_00_0_0000_00_0_0_0_000;
    end
    6'b00_0011:  //jal
    begin
      zero_sign = 1'b0;
      ctrlop = 16'b0_10_0_0000_00_0_0_1_000;
    end
    default:
    begin
      zero_sign = 1'b0;
      ctrlop = 16'b0_00_0_0000_00_0_0_0_000;
    end
  endcase

endmodule
