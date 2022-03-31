`include "define.v"
module alu(data1,data2,shift,aluctrl,result,overflow);

  input signed [31:0] data1;
  input signed [31:0] data2;
  input [4:0] shift;
  input [3:0] aluctrl;
  output [31:0] result;
  output overflow;
  reg [32:0] temp;
  
  assign result = temp[31:0];
  assign overflow = (temp[32]!=temp[31])&&(aluctrl==`ALU_add ||aluctrl == `ALU_sub);

always@(data1,data2,shift,aluctrl)
case(aluctrl)
  `ALU_and:temp[31:0] = data1&data2;
  `ALU_or:temp[31:0] = data1|data2;
  `ALU_add:temp = {data1[31],data1}+{data2[31],data2};
  `ALU_addu:temp = {data1[31],data1}+{data2[31],data2};
  `ALU_sub:temp = {data1[31],data1}-{data2[31],data2};
  `ALU_subu:temp = {data1[31],data1}-{data2[31],data2};
  `ALU_xor:temp[31:0] = data1^data2;
  `ALU_nor:temp[31:0] = ~(data1|data2);
  `ALU_slt:temp[31:0] = data1 < data2 ? 1 : 0;
  `ALU_sltu:temp[31:0] = {1'b0,data1} < {1'b0,data2} ? 1 : 0;
  `ALU_sll:
    begin
      case(shift)
        5'b00000:temp[31:0] = data2[31:0];
        5'b00001:temp[31:0] = {data2[30:0],1'b0};
        5'b00010:temp[31:0] = {data2[29:0],2'b0};
        5'b00011:temp[31:0] = {data2[28:0],3'b0};
        5'b00100:temp[31:0] = {data2[27:0],4'b0};
        5'b00101:temp[31:0] = {data2[26:0],5'b0};
        5'b00110:temp[31:0] = {data2[25:0],6'b0};
        5'b00111:temp[31:0] = {data2[24:0],7'b0};
        5'b01000:temp[31:0] = {data2[23:0],8'b0};
        5'b01001:temp[31:0] = {data2[22:0],9'b0};
        5'b01010:temp[31:0] = {data2[21:0],10'b0};
        5'b01011:temp[31:0] = {data2[20:0],11'b0};
        5'b01100:temp[31:0] = {data2[19:0],12'b0};
        5'b01101:temp[31:0] = {data2[18:0],13'b0};
        5'b01110:temp[31:0] = {data2[17:0],14'b0};
        5'b01111:temp[31:0] = {data2[16:0],15'b0};
        5'b10000:temp[31:0] = {data2[15:0],16'b0};
        5'b10001:temp[31:0] = {data2[14:0],17'b0};
        5'b10010:temp[31:0] = {data2[13:0],18'b0};
        5'b10011:temp[31:0] = {data2[12:0],19'b0};
        5'b10100:temp[31:0] = {data2[11:0],20'b0};
        5'b10101:temp[31:0] = {data2[10:0],21'b0};
        5'b10110:temp[31:0] = {data2[9:0],22'b0};
        5'b10111:temp[31:0] = {data2[8:0],23'b0};
        5'b11000:temp[31:0] = {data2[7:0],24'b0};
        5'b11001:temp[31:0] = {data2[6:0],25'b0};
        5'b11010:temp[31:0] = {data2[5:0],26'b0};
        5'b11011:temp[31:0] = {data2[4:0],27'b0};
        5'b11100:temp[31:0] = {data2[3:0],28'b0};
        5'b11101:temp[31:0] = {data2[2:0],29'b0};
        5'b11110:temp[31:0] = {data2[1:0],30'b0};
        5'b11111:temp[31:0] = {data2[0],31'b0};
        default:temp[31:0] = 32'b0;
      endcase
    end  
  `ALU_srl:
    begin
      case(shift)
        5'b00000:temp[31:0] = data2[31:0];
        5'b00001:temp[31:0] = {1'b0,data2[31:1]};
        5'b00010:temp[31:0] = {2'b0,data2[31:2]};
        5'b00011:temp[31:0] = {3'b0,data2[31:3]};
        5'b00100:temp[31:0] = {4'b0,data2[31:4]};
        5'b00101:temp[31:0] = {5'b0,data2[31:5]};
        5'b00110:temp[31:0] = {6'b0,data2[31:6]};
        5'b00111:temp[31:0] = {7'b0,data2[31:7]};
        5'b01000:temp[31:0] = {8'b0,data2[31:8]};
        5'b01001:temp[31:0] = {9'b0,data2[31:9]};
        5'b01010:temp[31:0] = {10'b0,data2[31:10]};
        5'b01011:temp[31:0] = {11'b0,data2[31:11]};
        5'b01100:temp[31:0] = {12'b0,data2[31:12]};
        5'b01101:temp[31:0] = {13'b0,data2[31:13]};
        5'b01110:temp[31:0] = {14'b0,data2[31:14]};
        5'b01111:temp[31:0] = {15'b0,data2[31:15]};
        5'b10000:temp[31:0] = {16'b0,data2[31:16]};
        5'b10001:temp[31:0] = {17'b0,data2[31:17]};
        5'b10010:temp[31:0] = {18'b0,data2[31:18]};
        5'b10011:temp[31:0] = {19'b0,data2[31:19]};
        5'b10100:temp[31:0] = {20'b0,data2[31:20]};
        5'b10101:temp[31:0] = {21'b0,data2[31:21]};
        5'b10110:temp[31:0] = {22'b0,data2[31:22]};
        5'b10111:temp[31:0] = {23'b0,data2[31:23]};
        5'b11000:temp[31:0] = {24'b0,data2[31:24]};
        5'b11001:temp[31:0] = {25'b0,data2[31:25]};
        5'b11010:temp[31:0] = {26'b0,data2[31:26]};
        5'b11011:temp[31:0] = {27'b0,data2[31:27]};
        5'b11100:temp[31:0] = {28'b0,data2[31:28]};
        5'b11101:temp[31:0] = {29'b0,data2[31:29]};
        5'b11110:temp[31:0] = {30'b0,data2[31:30]};
        5'b11111:temp[31:0] = {31'b0,data2[31]};
        default:temp[31:0] = 32'b0;
      endcase
    end
  `ALU_sra:
    begin
      case(shift)
        5'b00000:temp[31:0] = data2[31:0];
        5'b00001:temp[31:0] = {{1{data2[31]}},data2[31:1]};
        5'b00010:temp[31:0] = {{2{data2[31]}},data2[31:2]};
        5'b00011:temp[31:0] = {{3{data2[31]}},data2[31:3]};
        5'b00100:temp[31:0] = {{4{data2[31]}},data2[31:4]};
        5'b00101:temp[31:0] = {{5{data2[31]}},data2[31:5]};
        5'b00110:temp[31:0] = {{6{data2[31]}},data2[31:6]};
        5'b00111:temp[31:0] = {{7{data2[31]}},data2[31:7]};
        5'b01000:temp[31:0] = {{8{data2[31]}},data2[31:8]};
        5'b01001:temp[31:0] = {{9{data2[31]}},data2[31:9]};
        5'b01010:temp[31:0] = {{10{data2[31]}},data2[31:10]};
        5'b01011:temp[31:0] = {{11{data2[31]}},data2[31:11]};
        5'b01100:temp[31:0] = {{12{data2[31]}},data2[31:12]};
        5'b01101:temp[31:0] = {{13{data2[31]}},data2[31:13]};
        5'b01110:temp[31:0] = {{14{data2[31]}},data2[31:14]};
        5'b01111:temp[31:0] = {{15{data2[31]}},data2[31:15]};
        5'b10000:temp[31:0] = {{16{data2[31]}},data2[31:16]};
        5'b10001:temp[31:0] = {{17{data2[31]}},data2[31:17]};
        5'b10010:temp[31:0] = {{18{data2[31]}},data2[31:18]};
        5'b10011:temp[31:0] = {{19{data2[31]}},data2[31:19]};
        5'b10100:temp[31:0] = {{20{data2[31]}},data2[31:20]};
        5'b10101:temp[31:0] = {{21{data2[31]}},data2[31:21]};
        5'b10110:temp[31:0] = {{22{data2[31]}},data2[31:22]};
        5'b10111:temp[31:0] = {{23{data2[31]}},data2[31:23]};
        5'b11000:temp[31:0] = {{24{data2[31]}},data2[31:24]};
        5'b11001:temp[31:0] = {{25{data2[31]}},data2[31:25]};
        5'b11010:temp[31:0] = {{26{data2[31]}},data2[31:26]};
        5'b11011:temp[31:0] = {{27{data2[31]}},data2[31:27]};
        5'b11100:temp[31:0] = {{28{data2[31]}},data2[31:28]};
        5'b11101:temp[31:0] = {{29{data2[31]}},data2[31:29]};
        5'b11110:temp[31:0] = {{30{data2[31]}},data2[31:30]};
        5'b11111:temp[31:0] = {{31{data2[31]}},data2[31]};
        default:temp[31:0] = 32'b0;
      endcase
    end
  `ALU_lui:temp[31:0] = {data2[15:0],16'b0};
  default:temp = 33'b0;
endcase

endmodule
