// mux2
module MUX2#(parameter WIDTH = 32)(d0,d1,sel2_to_1,y);
    input [WIDTH-1:0] d0,d1;
    input sel2_to_1;
    output [WIDTH-1:0] y;
    reg [WIDTH-1:0] y_r;
    always @(d0,d1,sel2_to_1)begin
        if (sel2_to_1 == 1'b1 ) y_r = d1;
        else if (sel2_to_1 == 1'b0) y_r = d0;
       
    end
    assign y=y_r;
endmodule

// mux4

module MUX4 #(
    parameter WIDTH=8
) (
    d0,d1,d2,d3,sel4_to_1,y
);
    input [WIDTH-1:0] d0,d1,d2,d3;
    input [1:0] sel4_to_1;
    output [WIDTH-1:0] y;
    reg [WIDTH-1:0] y_r;
    always @(d0,d1,d2,d3,sel4_to_1) begin
        case (sel4_to_1)
            2'b00:y_r=d0;
            2'b01:y_r=d1;
            2'b10:y_r=d2;
            2'b11:y_r=d3;
            default : ;

        endcase 
    end
assign y=y_r;
endmodule
