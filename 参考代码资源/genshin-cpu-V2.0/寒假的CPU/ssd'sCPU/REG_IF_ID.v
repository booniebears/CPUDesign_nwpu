module REG_IF_ID (IF_PCadd4,IF_Inst,Clk,Reset,ID_PCadd4,ID_Inst,stall,stallstall,busy);
    input [31:0] IF_PCadd4,IF_Inst;
    input [3:0]busy;//没有用到
    input Clk,Reset,stall,stallstall;
    output reg[31:0] ID_PCadd4,ID_Inst;

    wire En,clr;
    assign En=(~stall)&(~stallstall);
    //assign clr=~condep;
    initial begin
        ID_Inst = 0;
        ID_PCadd4= 0 ;
    end
    
    always @(posedge Clk) begin 
        if(En==1 )begin
            //$display("IF_Inst:",IF_Inst);
            ID_PCadd4 = IF_PCadd4;
            ID_Inst = IF_Inst;             
        end
    end  
endmodule
    