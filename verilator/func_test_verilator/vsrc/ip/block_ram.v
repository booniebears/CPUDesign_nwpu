module ValidTag_Block (
    clk, clken, wen, addr, data_in, data_out

);
    input clk;
    input clken;
    input wen;
    input[index-1:0] addr;
    input [width-1:0]data_in;
    output reg [width-1:0]data_out;

    reg [width-1:0] data[depth-1:0];

    parameter width = 21;
    parameter depth = 64;
    parameter index = 6;
    integer  i = 0;
    initial begin
        for (i = 0; i<depth; i=i+1) begin
           data[i]=0;
        end
    end
    always @(posedge clk) begin
        if(clken)
        data_out<=data[addr];

    end
    always @(posedge clk) begin
      if(wen&clken)
      begin
          data[addr]<=data_in;
      end
    end


endmodule

module Data_Block (
    clk, clken, wen, addr, data_in, data_out

);
    input clk;
    input clken;
    input [wen_bit_num-1:0]wen;
    input[index-1:0] addr;
    input [width-1:0]data_in;
    output reg  [width-1:0]data_out;

    reg [width-1:0] data[depth-1:0];

    parameter width = 512;
    parameter depth = 64;
    parameter index = 6;
    parameter wen_bit_num = width>>3;
    integer  i = 0;
    initial begin
        for (i = 0; i<depth; i=i+1) begin
           data[i]=0;
        end
    end

    /*always @(posedge clk) begin
        if(clken)
        data_out<=data[addr];

    end*/

    generate
        genvar k;
        for (k = 0; k<width/8; k=k+1) begin
            always @(posedge clk) begin
                if(clken)
                data_out[7+8*k:8*k] <= wen[k] ? data_in[7+8*k:8*k] : data[addr][7+8*k:8*k];
            end
        end
    endgenerate

    generate
        genvar j;
        for (j = 0; j<width/8; j=j+1) begin
            always @(posedge clk) begin
                if(wen[j]&clken)
                data[addr][7+8*j:8*j] <=data_in[7+8*j:8*j];
            end
        end
    endgenerate




endmodule

// module Dirty_Block (
//     clk, clken, wen, addr, data_in, data_out

// );
//     input clk;
//     input clken;
//     input wen;
//     input[index-1:0] addr;
//     input [width-1:0]data_in;
//     output [width-1:0]data_out;

//     reg wen_buf;
//     reg [index-1:0] addr_buf;
//     reg [width-1:0]data_in_buf;
//     reg [width-1:0] data[depth-1:0];

//     parameter width = 1;
//     parameter depth = 64;
//     parameter index = 6;
//     integer  i = 0;
//     initial begin
//         for (i = 0; i<depth; i=i+1) begin
//            data[i]=0;
//         end
//     end
//     always @(posedge clk) begin
//         wen_buf <=wen;
//         addr_buf <= addr;
//         data_in_buf <= data_in;

//     end
//     always @(posedge clk) begin
//       if(wen_buf)
//       begin
//           data[addr_buf]<=data_in_buf;
//       end
//     end
//     assign data_out=data[addr_buf];


// endmodule