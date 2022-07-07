module trap(
    input   [3:0]     trap_op,
    input   [31:0]    trap_src1,
    input   [31:0]    trap_src2,
    output   reg  [31:0]  result_out
);
    always@(*) 
    begin
        case (trap_op)
            4'b0001   : begin   // TEQ 
                if ($signed(trap_src1) == $signed(trap_src2))
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b0010   : begin   // TEQI
                if ($signed(trap_src1) == $signed(trap_src2))
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b0011   : begin   // TGE 
                if ($signed(trap_src1) >= $signed(trap_src2))   
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end 
            4'b0100   : begin   //  TGEI
                if ($signed(trap_src1) >= $signed(trap_src2))   
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end 
            4'b0101 : begin // TGEU  
                if ((trap_src1) >= (trap_src2)) 
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b0110 : begin //  TGEIU 
                if ((trap_src1) >= (trap_src2)) 
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b0111  : begin   // TLT 
                if ($signed(trap_src1) < $signed(trap_src2))     
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b1000  : begin   // TLTI
                if ($signed(trap_src1) < $signed(trap_src2))     
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b1001 : begin // TLTIU 
                if ((trap_src1) < (trap_src2))  
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b1010 : begin //  TLTU
                if ((trap_src1) < (trap_src2))  
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b1011   : begin //TNE 
                if ($signed(trap_src1) != $signed(trap_src2))     
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            4'b1100   : begin // TNEI
                if ($signed(trap_src1) != $signed(trap_src2))     
                begin
                    result_out = 32'b1;
                end    
                else begin 
                    result_out = 32'b0;
                end
            end
            default: result_out = 32'b0;
        endcase
    end
    
endmodule