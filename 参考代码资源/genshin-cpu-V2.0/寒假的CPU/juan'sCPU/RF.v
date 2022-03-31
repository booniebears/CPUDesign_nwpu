module RF
#(parameter n = 32,
  parameter m = 5
)
(
  input [m-1:0]RF_address_read_1,//需要读的寄存器1的地址
  input [m-1:0]RF_address_read_2,//需要读的寄存器2的地址
  input [m-1:0]RF_address_write,//需要写的寄存器的地址
  input [n-1:0]RF_data_write,//需要写的寄存器的数据
  input RFWr,//寄存器写使能端
  input clk,//时钟信号
  output reg[n-1:0]RF_data_out_1,//需要读的寄存器1的数据
  output reg[n-1:0]RF_data_out_2//需要读的寄存器2的数据
);
/*
为了解决帮助解决旁路的问题，还是把通用寄存器设置为在下降沿写吧 不过其他的流水线寄存器还是上升沿写
*/
reg [n-1:0] rf[n-1:0];//寄存器堆

//实现rf的赋值
always @(negedge clk) begin
    if(RFWr==1'b1 )rf[RF_address_write]<=RF_data_write;
    else rf[RF_address_write]<=rf[RF_address_write];
end

//0号寄存器的值永远是0
always @(negedge clk) begin
    //rf[0]<=32'h0000_0000;
end
//我想到一个有意思的事情 每个周期的开始半段都是高电平 所以在每个周期的末尾 0号寄存器的值永远是0 而由于读数据都是在后半段的 所以就算试图修改0号寄存器 也无用

always @(RF_address_read_1,rf) begin
    RF_data_out_1=rf[RF_address_read_1];
end

always @(RF_address_read_2,rf) begin
    RF_data_out_2=rf[RF_address_read_2];
end


endmodule//lll