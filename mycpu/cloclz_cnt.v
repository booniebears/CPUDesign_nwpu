module cloclz_cnt (
    input  [31:0] cloclz_in,
    input         cloclz_type, //0-clo,1-clz
    output [31:0] cloclz_out
);

    wire [31:0] clo_out;
    wire [31:0] clz_out;
    assign clo_out = ~cloclz_in[31] ? 0  : ~cloclz_in[30] ? 1 :
                     ~cloclz_in[29] ? 2  : ~cloclz_in[28] ? 3 :
                     ~cloclz_in[27] ? 4  : ~cloclz_in[26] ? 5 :
                     ~cloclz_in[25] ? 6  : ~cloclz_in[24] ? 7 :
                     ~cloclz_in[23] ? 8  : ~cloclz_in[22] ? 9 :
                     ~cloclz_in[21] ? 10 : ~cloclz_in[20] ? 11 :
                     ~cloclz_in[19] ? 12 : ~cloclz_in[18] ? 13 :
                     ~cloclz_in[17] ? 14 : ~cloclz_in[16] ? 15 :
                     ~cloclz_in[15] ? 16 : ~cloclz_in[14] ? 17 :
                     ~cloclz_in[13] ? 18 : ~cloclz_in[12] ? 19 :
                     ~cloclz_in[11] ? 20 : ~cloclz_in[10] ? 21 :
                     ~cloclz_in[ 9] ? 22 : ~cloclz_in[ 8] ? 23 :
                     ~cloclz_in[ 7] ? 24 : ~cloclz_in[ 6] ? 25 :
                     ~cloclz_in[ 5] ? 26 : ~cloclz_in[ 4] ? 27 :
                     ~cloclz_in[ 3] ? 28 : ~cloclz_in[ 2] ? 29 :
                     ~cloclz_in[ 1] ? 30 : ~cloclz_in[ 0] ? 31 : 32;

    assign clz_out = cloclz_in[31] ? 0  : cloclz_in[30] ? 1 :
                     cloclz_in[29] ? 2  : cloclz_in[28] ? 3 :
                     cloclz_in[27] ? 4  : cloclz_in[26] ? 5 :
                     cloclz_in[25] ? 6  : cloclz_in[24] ? 7 :
                     cloclz_in[23] ? 8  : cloclz_in[22] ? 9 :
                     cloclz_in[21] ? 10 : cloclz_in[20] ? 11 :
                     cloclz_in[19] ? 12 : cloclz_in[18] ? 13 :
                     cloclz_in[17] ? 14 : cloclz_in[16] ? 15 :
                     cloclz_in[15] ? 16 : cloclz_in[14] ? 17 :
                     cloclz_in[13] ? 18 : cloclz_in[12] ? 19 :
                     cloclz_in[11] ? 20 : cloclz_in[10] ? 21 :
                     cloclz_in[ 9] ? 22 : cloclz_in[ 8] ? 23 :
                     cloclz_in[ 7] ? 24 : cloclz_in[ 6] ? 25 :
                     cloclz_in[ 5] ? 26 : cloclz_in[ 4] ? 27 :
                     cloclz_in[ 3] ? 28 : cloclz_in[ 2] ? 29 :
                     cloclz_in[ 1] ? 30 : cloclz_in[ 0] ? 31 : 32;
    
    assign cloclz_out = cloclz_type ? clz_out : clo_out;

endmodule //cloclz_cnt