/*
 * @Author: Juan Jiang
 * @Date: 2021-04-05 20:20:45
 * @LastEditTime: 2021-06-07 11:14:46
 * @LastEditors: Please set LastEditors
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */

 `include "CPU_Defines.svh"

 module MMU (
     input logic [31:0]virt_addr,
     output logic [31:0]phsy_addr,
     output logic isUncache
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
    
    always_comb begin
        if (virt_addr[31:16] == 16'hbfaf) begin
            isUncache = 1'b1;
        end
        else begin
            isUncache = 1'b0;
        end
    end



 endmodule