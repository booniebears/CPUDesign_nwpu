import "DPI-C" function void uart_write_helper
(
    input int uart_data
);
module UARTHelper(
    input clk,
    input aresetn,
    input [31:0] uart_data,
    input valid
);

always @(posedge clk) begin
    if(aresetn & valid)
        uart_write_helper(uart_data);
end
endmodule