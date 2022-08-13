module regfile(
    input         clk,
    input         reset,
`ifdef ILA_debug
    output [31:0] ra,
    output [31:0] sp,
`endif
    // READ PORT 1
    input  [ 4:0] raddr1,
    output [31:0] rdata1,
    // READ PORT 2
    input  [ 4:0] raddr2,
    output [31:0] rdata2,
    // WRITE PORT
    input         we,       //write enable, HIGH valid
    input  [ 4:0] waddr,
    input  [31:0] wdata,

    /////debug/////
    output [31:0] v0,
    output [31:0] v1
);

reg [31:0] rf[31:0];

assign v0 = rf[2];
assign v1 = rf[3];



integer i;
//WRITE
always @(posedge clk) begin
    if(reset) begin
        for (i = 0; i < 6'd32; i = i + 1) begin
            rf[i] <= 32'b0;
        end
    end
    else if (we && (waddr != 0)) rf[waddr]<= wdata;
end

//READ OUT 1
assign rdata1 = (raddr1==5'b0) ? 32'b0 : rf[raddr1];

//READ OUT 2
assign rdata2 = (raddr2==5'b0) ? 32'b0 : rf[raddr2];

`ifdef ILA_debug
    assign ra = rf[31];
    assign sp = rf[29];
`endif
endmodule