module PC(ID_rs,ID_PCSrc,ID_B,Inst,Result,Clk,Reset,Address,stall,stallstall,busy);  //En=1????��??stall=0??��???lw???????
    input Clk;
    input [2:0]ID_PCSrc;
    input [31:0]ID_B;
    input [31:0]ID_rs;
    input [31:0]Inst;
    input [3:0]busy;//???
    input Reset;//???????????0-?????PC?????????????       
    input[31:0] Result;
    input stall,stallstall;
    output reg[31:0] Address;
    reg En;
    reg [1:0]testj = 0;
    reg [1:0]testjr = 0;
    wire [5:0]Instop;
    assign Instop = Inst[31:26]; 
    //assign En=(~stall)&(~stallstall);
    
    always @(stall,stallstall) begin
      En=(~stall)&(~stallstall);  
    end

    initial begin
        Address  <= 32'h00003000;
    end
    
    always @(posedge Clk or negedge Reset)  
    begin
        case (Inst[31:26])
        //附加阻塞逻辑
            6'b000100:En = ~En;//beq
            6'b000001:En = ~En;//bgez,BLTZ
            6'b000111:En = ~En;//bgtz
            6'b000110:En = ~En;//blez
            6'b000101:En = ~En;//BNE
            6'b000010:En = ~En;//J
            6'b000011:En = ~En;//Jal
            6'b000000:begin
                if(Inst[5:0]==6'b001001)begin
                    if(testj == 0)begin
                      En = 0;
                      testj = 1;  
                    end
                    else if (testj == 1) begin
                      En = 0;
                      testj = 2;
                    end
                    else if (testj == 2) begin
                      testj = 0;
                      En = 1;
                    end
                end
                else begin
                    //to avoid latch
                end

                if(Inst[5:0]==6'b001000)begin
                    if(testjr == 0)begin
                      En = 0;
                      testjr = 1;  
                    end
                    else if (testjr == 1) begin
                      En = 0;
                      testjr = 2;
                    end
                    else if (testjr == 2) begin
                      En = 0;
                      testjr = 3;
                    end
                    else if (testjr == 3) begin
                        En = 1;
                        testjr = 0;
                    end
                end
                else begin
                    //to avoid latch
                end

            end
            default:En=(~stall)&(~stallstall);  
        endcase

        // case (ID_PCSrc)
        //     3'b000:if(Result == Address + 4) begin
        //         En=1;
        //     end
        //     3'b001:if(Result == ID_B) begin
        //         En=1;
        //     end
        // endcase

        if(En==1)
        begin
             if (!Reset) //????0??????PC?????????????
                begin  
                    Address <= 32'h000003000;  
                end  
            else   
                begin
                    Address =  Result;  
                end  
        end

    end  
endmodule

