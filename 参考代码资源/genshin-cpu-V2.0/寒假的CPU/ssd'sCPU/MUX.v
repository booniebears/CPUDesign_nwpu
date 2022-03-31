//决定nextAddr，分别为pc+4,b,j,jr
module MUX4X32_addr (PCAdd4, B, J, Jr, PCSrc, nextAddr);
    input [31:0] PCAdd4, B, J, Jr;
    input [2:0] PCSrc;
    output [31:0] nextAddr;

    function [31:0] select;
        input [31:0] PCAdd4, B, J, Jr;
        input [2:0] PCSrc;
        case(PCSrc)
            3'b000: select = PCAdd4;
            3'b001: select = B;
            3'b010: select = J;
            3'b011: select = J;
            3'b100: select = Jr;
            3'b101: select = Jr;
            default : select = PCAdd4;
        endcase
    endfunction

    assign nextAddr = select (PCAdd4, B, J, Jr, PCSrc);
endmodule

//选择写的地址，rd还是rt,1为rt
module MUX2X5(rd,rt,RegDst,Y);
    input [4:0] rd,rt;
    input RegDst;
    output [4:0] Y;

    function [4:0] select;
        input [4:0] rd,rt;
        input RegDst;
        case(RegDst)
            1:select=rt;
            0:select=rd;
        endcase
    endfunction
    assign Y=select(rd,rt,RegDst);
endmodule

//旁路选择器，从Q,EX/MEM,MEM/WB,0中选一个
module MUX5X32 (Q, EX_MEM, MEM_WB, res_hi,res_lo,S, Y);
    input [31:0] Q, EX_MEM, MEM_WB,res_hi,res_lo;
    input [2:0] S;
    output [31:0] Y;

    function [31:0] select;
        input [31:0] Q, EX_MEM, MEM_WB,res_hi,res_lo;
        input [2:0] S;
        case(S)
            3'b000: select = Q;
            3'b001: select = EX_MEM;
            3'b010: select = MEM_WB;
            3'b100: select = res_hi;
            3'b101: select = res_lo;
        endcase
    endfunction
    assign Y = select (Q, EX_MEM, MEM_WB,res_hi,res_lo, S);
endmodule

//选择ALU x端
//选择ALU y端的来源，是来自于扩展为32位的立即数，还是Qb，forward啥的，0的时候为扩展
//选择写回寄存器堆的数据来源，是从dm里面来还是从alu里面来     
module MUX2X32(EXT,Qb_FORWARD,S,Y);
    input [31:0] EXT,Qb_FORWARD;
    input S;
    output [31:0] Y;

    function [31:0] select;
        input [31:0] EXT,Qb_FORWARD;
        input S;
        case(S)
            0:select=EXT;
            1:select=Qb_FORWARD;
        endcase
    endfunction
    assign Y=select(EXT,Qb_FORWARD,S);
endmodule

//ID阶段的旁路选择器
module MUX4X32_forward(ID_Q,ALU_OUT,res_hi,res_lo,Fwd,Y);
    input [31:0] ID_Q,ALU_OUT,res_hi,res_lo;
    input [2:0] Fwd;
    output [31:0] Y;
    
    function [31:0] select;
    input [31:0] ID_Q,ALU_OUT,res_hi,res_lo;
    input [1:0] Fwd;
    case(Fwd)
        3'b000: select = ID_Q;
        3'b001: select = ALU_OUT;
        3'b100: select = res_hi;
        3'b101: select = res_lo;
    endcase
    endfunction

    assign Y = select (ID_Q,ALU_OUT,res_hi,res_lo,Fwd);
endmodule

//选择load的数据
module MUX5X32_load(lb,lbu,lh,lhu,lw,load_option,ext_Dout);
    input [31:0] lb,lbu,lh,lhu,lw;
    input [2:0]load_option;
    output [31:0] ext_Dout;

    function [31:0] select;
        input [31:0]lb,lbu,lh,lhu,lw;
        input [2:0]load_option;
        case(load_option)
            3'b000:select=lw;
            3'b101:select=lb;
            3'b001:select=lbu;
            3'b111:select=lh;
            3'b011:select=lhu;
        endcase
    endfunction
    assign ext_Dout=select(lb,lbu,lh,lhu,lw,load_option);
endmodule

//选择最后的写回数据，考虑到乘除法
module MUX2X32_md(WriteData,res_hi,res_lo,md_signal,md_control,WriteData_final);
    input [31:0] WriteData,res_hi,res_lo;
    input md_signal;
    input [2:0] md_control;
    output [31:0] WriteData_final;

    assign WriteData_final = md_signal?((md_control[2]&md_control[1]&~md_control[0])?res_hi:res_lo):WriteData;
endmodule
