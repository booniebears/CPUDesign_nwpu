`include "global_defines.vh"

module trap(
    input   [ 2:0]    trap_op,
    input   [31:0]    trap_src1,
    input   [31:0]    trap_src2,
    output  reg       trap_ex 
);
    always @(*) begin
        case (trap_op)
            `TEQ_TYPE: //TEQ,TEQI
                if($signed(trap_src1) == $signed(trap_src2))
                    trap_ex = 1'b1;
                else
                    trap_ex = 1'b0;
            `TGE_TYPE: //TGE,TGEI
                if($signed(trap_src1) >= $signed(trap_src2))
                    trap_ex = 1'b1;
                else
                    trap_ex = 1'b0;
            `TGEU_TYPE: //TGEU,TGEIU
                if(trap_src1 >= trap_src2)
                    trap_ex = 1'b1;
                else
                    trap_ex = 1'b0;
            `TLT_TYPE: //TLT,TLTI
                if($signed(trap_src1) < $signed(trap_src2))
                    trap_ex = 1'b1;
                else
                    trap_ex = 1'b0;
            `TLTU_TYPE: //TLTU,TLTIU
                if(trap_src1 < trap_src2)
                    trap_ex = 1'b1;
                else
                    trap_ex = 1'b0;
            `TNE_TYPE: //TNE,TNEI
                if($signed(trap_src1) != $signed(trap_src2))
                    trap_ex = 1'b1;
                else
                    trap_ex = 1'b0;   
            default: trap_ex = 1'b0;
        endcase
    end
endmodule