module REG_MEM_WB(M_md_control,M_md_signal,M_res_hi,M_res_lo,M_RegWrite,M_MemtoReg,M_ALUanswer,M_Dout,M_WriteReg,M_load_option,Clk,Reset,
W_md_control,W_md_signal,W_res_hi,W_res_lo,W_RegWrite,W_MemtoReg,W_ALUanswer,W_Dout,W_WriteReg,W_load_option);

    input [31:0] M_ALUanswer,M_Dout,M_res_hi,M_res_lo;
    input [4:0] M_WriteReg;
    input [2:0] M_load_option,M_md_control;
    input Clk,Reset,M_RegWrite,M_MemtoReg,M_md_signal;

    output reg[31:0] W_ALUanswer,W_Dout,W_res_hi,W_res_lo;
    output reg[4:0] W_WriteReg;
    output reg[2:0] W_load_option,W_md_control;
    output reg W_RegWrite,W_MemtoReg,W_md_signal;

    initial begin
        W_RegWrite = 0;
        W_MemtoReg = 0;
        W_ALUanswer = 0;
        W_Dout = 0;
        W_WriteReg = 0;
        W_load_option = 0;
        W_md_signal = 0;
        W_res_hi = 0;
        W_res_lo = 0;
        W_md_control = 0;
    end

    always @(posedge Clk or negedge Reset)  
    begin  
    if (!Reset) 
        begin  
            W_RegWrite = 0;
            W_MemtoReg = 0;
            W_ALUanswer = 0;
            W_Dout = 0;
            W_WriteReg = 0;
            W_load_option = 0;
            W_md_signal = 0;
            W_res_hi = 0;
            W_res_lo = 0;
            W_md_control = 0;
        end  
    else   
        begin
            W_RegWrite = M_RegWrite;
            W_MemtoReg = M_MemtoReg;
            W_ALUanswer = M_ALUanswer;
            W_Dout = M_Dout;
            W_WriteReg = M_WriteReg;
            W_load_option = M_load_option;
            W_md_signal = M_md_signal;
            W_res_hi = M_res_hi;
            W_res_lo = M_res_lo;
            W_md_control = M_md_control;
        end  
    end
endmodule