module dm_4k( addr, din, DMWr, clk, dout,dm_choose,EXT_MEM );
   
   input  [11:0] addr;
   input  [31:0] din;
   input         DMWr;
   input         clk;
   input  [1:0] dm_choose;
   input [2:0]EXT_MEM;
   output reg [31:0] dout;
     
   reg [31:0] dmem[1023:0];
   
   always @(negedge clk) begin
      if (DMWr)
         if(dm_choose==2'b10)
         dmem[addr[11:2]] <= din;
         else if (dm_choose==2'b00) begin
         case (addr[1:0])
            2'b00:dmem[addr[11:2]][7:0]<=din[7:0];  
            2'b01:dmem[addr[11:2]][15:8]<=din[7:0]; 
            2'b10:dmem[addr[11:2]][23:16]<=din[7:0]; 
            default:dmem[addr[11:2]][31:24]<=din[7:0]; 
         endcase
         end
         else if (dm_choose==2'b01) begin
            case (addr[1])
               1'b0:dmem[addr[11:2]][15:0]<=din[15:0]; 
               default: dmem[addr[11:2]][31:16]<=din[15:0];
            endcase
         end

         else begin
           
         end
   end // end always 关于写
   
   //关于load读出来的数据

   always @(addr,dmem,EXT_MEM) begin
      case (EXT_MEM)
         3'b000:begin

           case (addr[1:0])
              2'b00:begin
                if(dmem[addr[11:2]][7]==1'b1)dout={24'hfff_fff,dmem[addr[11:2]][7:0]};
                else dout={24'h000_000,dmem[addr[11:2]][7:0]};
              end 
              2'b01:begin
                if(dmem[addr[11:2]][15]==1'b1)dout={24'hfff_fff,dmem[addr[11:2]][15:8]};
                else dout={24'h000_000,dmem[addr[11:2]][15:8]};                
              end
              2'b10:begin
                if(dmem[addr[11:2]][23]==1'b1)dout={24'hfff_fff,dmem[addr[11:2]][23:16]};
                else dout={24'h000_000,dmem[addr[11:2]][23:16]};                
              end
              default:begin
                 if(dmem[addr[11:2]][31]==1'b1)dout={24'hfff_fff,dmem[addr[11:2]][31:24]};
                else dout={24'h000_000,dmem[addr[11:2]][31:24]};               
              end 
           endcase

         end

         3'b001:begin

           case (addr[1:0])
              2'b00:begin
               dout={24'h000_000,dmem[addr[11:2]][7:0]};
              end 
              2'b01:begin
               dout={24'h000_000,dmem[addr[11:2]][15:8]};                
              end
              2'b10:begin
               dout={24'h000_000,dmem[addr[11:2]][23:16]};                
              end
              default:begin
               dout={24'h000_000,dmem[addr[11:2]][31:24]};               
              end 
           endcase

         end         

         3'b010:begin//lh

           case (addr[1])
              1'b0:begin
                if(dmem[addr[11:2]][15]==1'b1)dout={16'hfff_f,dmem[addr[11:2]][15:0]};
                else dout={16'h000_0,dmem[addr[11:2]][15:0]};
              end              
              default:begin
                 if(dmem[addr[11:2]][31]==1'b1)dout={24'hfff_fff,dmem[addr[11:2]][31:16]};
                else dout={16'h000_0,dmem[addr[11:2]][31:16]};               
              end 
           endcase

         end         

         3'b011:begin//lhu

           case (addr[1])
              1'b0:begin
               dout={16'h000_0,dmem[addr[11:2]][15:0]};
              end              
              default:begin
               dout={16'h000_0,dmem[addr[11:2]][31:16]};               
              end 
           endcase

         end

         3'b100:begin//lw
           dout=dmem[addr[11:2]];
         end

         default: begin
           
         end
      endcase
   end

    
endmodule    
