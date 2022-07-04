

module PLRU #(
    parameter ASSOC_NUM = 2
) 
(
    input                          clk,
    input                          reset,
    input [ASSOC_NUM-1:0]          delayed_hit, 
    input                          update,  
    output [$clog2(ASSOC_NUM)-1:0] plru  //表示替换哪一路
);

reg [ASSOC_NUM-2:0] state; 
reg [ASSOC_NUM-2:0] nextstate;

generate
if(ASSOC_NUM == 2) begin
    assign plru = state;
end else begin
    assign plru = state[2] == 1'b0 ? state[2:1] : {state[2], state[0]}; 
end
endgenerate

generate
if(ASSOC_NUM == 2) begin
    always @(*) begin
        nextstate = state;

        if(update && |delayed_hit) begin
            if(delayed_hit[0]) begin
                nextstate[0] = 1'b1;//如果这次命中的是第0路 那么下次不命中的时候替换的就是1路
            end else begin
                nextstate[0] = 1'b0;
            end
        end
    end
end 
else begin //感觉写的有问题
    always @(*) begin
        nextstate = state;    //好习惯啊

        casez(delayed_hit)
            4'b1???: begin
                nextstate[2] = 1'b0;
                nextstate[0] = 1'b0;
            end
            4'b01??: begin
                nextstate[2] = 1'b0;
                nextstate[0] = 1'b1;
            end
            4'b001?: begin
                nextstate[2] = 1'b1;
                nextstate[1] = 1'b0;
            end
            4'b0001: begin
                nextstate[2] = 1'b1;
                nextstate[1] = 1'b1;
            end
        endcase
    end
end 
endgenerate

always @(posedge clk) begin
    if(reset) begin
        state <= 0;
    end else if(update) begin
        state <= nextstate;
    end
end

endmodule

