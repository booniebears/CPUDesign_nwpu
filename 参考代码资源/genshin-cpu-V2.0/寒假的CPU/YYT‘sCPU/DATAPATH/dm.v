`include "Ctrl_encoding_def.v"
module dm_4k( addr, din, DMWr, clk, dout ,SaveType);  // 数据寄存器
   
   input  [11:0] addr;  // 地址 （[11:2] 共10位）选择的是第几个的32位寄存器 [1:0]表示选择那一个字段写
   input  [31:0] din;   // 需要写进的数据
   input [1:0]  SaveType;  //保存数据的类型
   input         DMWr;  // 写使能信号
   input         clk;

   output [31:0] dout;  // 读出的数据
   
   reg [31:0] dmem[1023:0]; //32bit* 1024
   wire [11:2] DataInAddr;
   wire [1:0]  SMODE;
   assign DataInAddr = addr[11:2];
   assign SMODE   = addr[1:0];
   always @(posedge clk) begin
      if (DMWr)begin
         case (SaveType)
            `MODE_SB : begin
               case (SMODE)
                  2'b00: dmem[DataInAddr][7:0]   = din[7:0];
                  2'b01: dmem[DataInAddr][15:8]  = din[7:0];
                  2'b10: dmem[DataInAddr][23:16] = din[7:0];
                  2'b11: dmem[DataInAddr][31:24] = din[7:0];
                  default: ;
               endcase
            end
            `MODE_SH : begin
               case (SMODE[1])
                  1'b1 : dmem[DataInAddr][31:16] = din[15:0]; 
                  1'b0 : dmem[DataInAddr][15:0]  = din[15:0]; 
                  default: ;
               endcase 
            end
            `MODE_SW : begin
               dmem[DataInAddr] <= din;
            end
            default:dmem[DataInAddr] <= din;
         endcase
      end
          
   end // end always
   
   assign dout = dmem[DataInAddr];
    
endmodule    
