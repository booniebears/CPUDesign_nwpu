/*
 * @Author: Juan
 * @Date: 2021-05-10 15:25:05
 * @LastEditTime: 2021-05-10 15:25:13
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \Src\Cache\MMU.sv
 */
 
 module MMU (
     input logic [31:0]virt_addr,
     output logic [31:0]phsy_addr
 );
     
    always_comb begin
        if(virt_addr < 32'hC000_0000 && virt_addr > 32'h9FFF_FFFF) begin
            phsy_addr        = virt_addr - 32'hA000_0000;
            
        end
        else if(virt_addr < 32'hA000_0000 && virt_addr > 32'h7FFF_FFFF) begin
            phsy_addr        = virt_addr - 32'h8000_0000;
            
        end
        else begin
            phsy_addr        = virt_addr;
            
        end
    end


 endmodule