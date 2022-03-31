`include "Ctrl_encoding_def.v"


module NPC (
    PC,NPC,Imm,RFIn,NPCop
);
    
    input [31:2] PC;
    input [25:0] Imm;
    input [1:0] NPCop;
    input [31:0] RFIn;

    output  [31:2] NPC;

    reg [31:2] NPC_r;
    always @(PC,Imm,NPCop,RFIn) begin
        case (NPCop)
        `NPC_NORMAL : NPC_r=PC ;
        `NPC_BRANCH : NPC_r=PC+{{14{Imm[15]}},Imm[15:0]};
        `NPC_JUMP   : NPC_r={PC[31:28],Imm[25:0]};
        `NPC_RF     : NPC_r=RFIn[31:2];   // 实际低30位保存的是地址
        default : ;

        endcase
    end

    assign  NPC=NPC_r;

endmodule