module FIFO #(
    parameter FIFO_WIDTH   = 68,
    parameter BUFFER_DEPTH = 32
)
(
    input        clk,
    input        reset,
    input        [FIFO_WIDTH-1:0] din,
    input        rd_en,
    input        wr_en,
    output       full,
    output       empty,
    output       [FIFO_WIDTH-1:0] dout
);

reg  [FIFO_WIDTH-1:0]           fifo_buffer [BUFFER_DEPTH-1:0]; //定义FIFO 
reg  [$clog2(BUFFER_DEPTH)-1:0] read_ptr;
reg  [$clog2(BUFFER_DEPTH)-1:0] write_ptr; //两个指针
wire [$clog2(BUFFER_DEPTH)-1:0] write_next;

always @(posedge clk) begin
    if(reset)
        read_ptr <= 0;
    else if(rd_en)
        read_ptr <= read_ptr + 1;
end

always @(posedge clk) begin
    if(reset)
        write_ptr <= 0;
    else if(wr_en)
        write_ptr <= write_ptr + 1;    
end

integer i;
always @(posedge clk) begin
    if(reset) begin
        for (i = 0; i < BUFFER_DEPTH; i = i + 1) begin
            fifo_buffer[i] <= 0;
        end
    end
    else if(wr_en)
        fifo_buffer[write_ptr] <= din;
end

//FIFO类似一个循环链表 利用了五位reg 31 + 1 = 0的特性
assign write_next = write_ptr + 1;
assign full  = (write_next[$clog2(BUFFER_DEPTH)-1:0] == read_ptr);
//Attention:满了之后自然不会继续往FIFO里写 所以不存在write指针兜了一圈和read指针相同的情况
assign empty = (write_ptr == read_ptr); 
assign dout  = fifo_buffer[read_ptr];

endmodule //FIFO