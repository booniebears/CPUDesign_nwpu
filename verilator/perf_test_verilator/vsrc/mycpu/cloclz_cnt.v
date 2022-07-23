module cloclz_cnt (
    input  [31:0] cloclz_in,
    input         cloclz_type, //0-clo,1-clz
    output [31:0] cloclz_out
);

    wire [31:0] clo_out;
    wire [31:0] clz_out;
    assign clo_out = ~cloclz_in[31] ? 5'd0  : ~cloclz_in[30] ? 5'd1 :
                     ~cloclz_in[29] ? 5'd2  : ~cloclz_in[28] ? 5'd3 :
                     ~cloclz_in[27] ? 5'd4  : ~cloclz_in[26] ? 5'd5 :
                     ~cloclz_in[25] ? 5'd6  : ~cloclz_in[24] ? 5'd7 :
                     ~cloclz_in[23] ? 5'd8  : ~cloclz_in[22] ? 5'd9 :
                     ~cloclz_in[21] ? 5'd10 : ~cloclz_in[20] ? 5'd11 :
                     ~cloclz_in[19] ? 5'd12 : ~cloclz_in[18] ? 5'd13 :
                     ~cloclz_in[17] ? 5'd14 : ~cloclz_in[16] ? 5'd15 :
                     ~cloclz_in[15] ? 5'd16 : ~cloclz_in[14] ? 5'd17 :
                     ~cloclz_in[13] ? 5'd18 : ~cloclz_in[12] ? 5'd19 :
                     ~cloclz_in[11] ? 5'd20 : ~cloclz_in[10] ? 5'd21 :
                     ~cloclz_in[ 9] ? 5'd22 : ~cloclz_in[ 8] ? 5'd23 :
                     ~cloclz_in[ 7] ? 5'd24 : ~cloclz_in[ 6] ? 5'd25 :
                     ~cloclz_in[ 5] ? 5'd26 : ~cloclz_in[ 4] ? 5'd27 :
                     ~cloclz_in[ 3] ? 5'd28 : ~cloclz_in[ 2] ? 5'd29 :
                     ~cloclz_in[ 1] ? 5'd30 : ~cloclz_in[ 0] ? 5'd31 : 6'd32;

    assign clz_out = cloclz_in[31] ? 5'd0  : cloclz_in[30] ? 5'd1 :
                     cloclz_in[29] ? 5'd2  : cloclz_in[28] ? 5'd3 :
                     cloclz_in[27] ? 5'd4  : cloclz_in[26] ? 5'd5 :
                     cloclz_in[25] ? 5'd6  : cloclz_in[24] ? 5'd7 :
                     cloclz_in[23] ? 5'd8  : cloclz_in[22] ? 5'd9 :
                     cloclz_in[21] ? 5'd10 : cloclz_in[20] ? 5'd11 :
                     cloclz_in[19] ? 5'd12 : cloclz_in[18] ? 5'd13 :
                     cloclz_in[17] ? 5'd14 : cloclz_in[16] ? 5'd15 :
                     cloclz_in[15] ? 5'd16 : cloclz_in[14] ? 5'd17 :
                     cloclz_in[13] ? 5'd18 : cloclz_in[12] ? 5'd19 :
                     cloclz_in[11] ? 5'd20 : cloclz_in[10] ? 5'd21 :
                     cloclz_in[ 9] ? 5'd22 : cloclz_in[ 8] ? 5'd23 :
                     cloclz_in[ 7] ? 5'd24 : cloclz_in[ 6] ? 5'd25 :
                     cloclz_in[ 5] ? 5'd26 : cloclz_in[ 4] ? 5'd27 :
                     cloclz_in[ 3] ? 5'd28 : cloclz_in[ 2] ? 5'd29 :
                     cloclz_in[ 1] ? 5'd30 : cloclz_in[ 0] ? 5'd31 : 6'd32;
    
    assign cloclz_out = cloclz_type ? clz_out : clo_out;

endmodule //cloclz_cnt