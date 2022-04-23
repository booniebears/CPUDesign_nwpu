

// parameter   W_IDLE = 0,
//             W_WRITE = 1;


//我直接写了dcache，icache在dcache的基础上将写操作屏蔽即可
//还没来得及调试，因为没有按照CPU设计实战上写，暂时还没有问学长如何调试（可能会有点小问题）。
//端口信号和在CPU设计实战上做了改动，与AXI的通信使用了一次性128位，并由此删除了一些不必要信号。


module icache (
    //与CPU流水线的交互接口
    input clk,
    input reset,
    input valid,
    input op, //icache 不用
    input [7:0] index,
    input [19:0] tag,//tag 和 v 放在ram里面，d 使用regfile存储
    input [3:0] offset,
    input [31:0] wdata, //icache 不用
    output reg addr_ok,
    output reg data_ok,
    output reg [31:0] rdata,

    //与AXI总线接口的交互接口
    output reg rd_req,
    output [31:0] rd_addr,
    input rd_rdy,
    input ret_valid,
    input [127:0] ret_data
    // output wr_req,
    // output [31:0] wr_addr,
    // output [127:0] wr_data,
    // input wr_rady,
);

parameter   IDLE = 3'd0,
            LOOKUP = 3'd1,
            MISS = 3'd2,
            REPLACE = 3'd3,
            REFILL = 3'd4;


wire [127:0] way0_block;
wire [127:0] way1_block;

wire [1:0] hit_way;
// wire chose_dirty;
reg [2:0] c_state;
reg [2:0] n_state;

wire hit;

reg [69:0] CPU_Cache_buffer;


reg[1:0] count;
always @(posedge clk)begin
    if(hit_way[0]) begin
        count[0] = 1;
        count[1] = 0;
    end else begin
        count[0] = 0;
        count[1] = 1;
    end
end

always @(posedge clk) begin
    if(reset) begin
        c_state <= IDLE;
    end else begin
        c_state <= n_state;
    end    
end

always @(*) begin
    if(reset) begin
        n_state <= IDLE;
    end else begin
            case (c_state)
                IDLE: begin
                    if(valid) //如果CPU发出请求(请求与Hit Write冲突暂未考虑)
                        n_state <= LOOKUP;
                    else
                        n_state <= IDLE;
                end
                LOOKUP: begin
                    if(hit && valid) //如果命中并且CPU发出请求
                        n_state <= LOOKUP;
                    else if(hit && !valid) //如果命中但是CPU没发出请求
                        n_state <= IDLE;
                    else
                        n_state <= MISS;
                end
                MISS: begin
                //     if(wr_rady || !chose_dirty)//如果可以写入,代表着AXI那边没有在写，说明可以把脏页写出；或者选择替换的不是脏页
                //         n_state <= REPLACE;
                //     else
                //         n_state <= MISS;
                // end
                // REPLACE: begin
                    if(rd_rdy)//AXI总线可以接受读请求
                        n_state <= REFILL;
                    else
                        // n_state <= REPLACE;
                        n_state <= MISS;
                end
                REFILL: begin
                    if(ret_valid)//AXI总线返回读数据 或者 要写
                        n_state <= IDLE;
                    else
                        n_state <= REFILL;
                end
                default: 
                    n_state <= IDLE;
            endcase
    
    end
end

//cache是否能够接收地址
always @(posedge clk) begin
    if(c_state == IDLE)
        addr_ok <= valid;
    else
        addr_ok <= 0;
end

always @(posedge clk) begin
    if(c_state == LOOKUP && hit)begin
        data_ok <= 1;
    end else if(c_state == REFILL) begin
        data_ok <= 1;
    end else begin
        data_ok <= 0;
    end
end

always @(posedge clk) begin
    if(c_state == IDLE && valid || c_state == LOOKUP && hit && valid) begin
        CPU_Cache_buffer <= {
                                valid,// 69
                                op, // 68 //icache 不用
                                tag,// [67:48]
                                index,//[47:40]
                                offset, // [39:36]
                                //wstrb, // [35:32]
                                //wdata // [31:0] //icache 不用
                                35'b0
                            };
    end
end

wire [19:0] way0_tag;
wire [19:0] way1_tag;

wire way0_v;
wire way1_v;



assign hit_way[0] = (way0_tag == tag) && way0_v;
assign hit_way[1] = (way1_tag == tag) && way1_v;


assign hit = hit_way[0] || hit_way[1];

// always @(posedge clk) begin
//     if(c_state == MISS)
//         wr_req <= wr_rdy;
//     else
//         wr_req <= 0;

// end

// assign wr_addr = CPU_Cache_buffer[67:36];
assign rd_addr = CPU_Cache_buffer[67:36];
// assign wr_data = 128{count[0] && way0_v} && way0_block ||
//                     128{count[1] && way1_v} && way1_block;
// assign chose_dirty = count[0] && way0_dirty[ CPU_Cache_buffer[47:40] ] || 
//                         count[1] && way1_dirty[ CPU_Cache_buffer[47:40] ];

always @(posedge clk) begin
    if(c_state == MISS)
        rd_req <= rd_rdy;
    else
        rd_req <= 0;
    
end



reg [127:0] ram_write_data;
always @(posedge clk) begin
    // if(CPU_Cache_buffer[68]) begin
    //     ram_write_data[31:0] <= CPU_Cache_buffer[39:38] == 2'b00 ? CPU_Cache_buffer[31:0] : 0;
    //     ram_write_data[63:32] <= CPU_Cache_buffer[39:38] == 2'b01 ? CPU_Cache_buffer[31:0] : 0;
    //     ram_write_data[95:64] <= CPU_Cache_buffer[39:38] == 2'b10 ? CPU_Cache_buffer[31:0] : 0;
    //     ram_write_data[127:96] <= CPU_Cache_buffer[39:38] == 2'b11 ? CPU_Cache_buffer[31:0] : 0;
    // end else begin
        ram_write_data <= ret_valid ? ret_data : 0;
    // end
end


reg[3:0] wr0_en;
reg[3:0] wr1_en;
always @(posedge clk) begin
    // if(c_state == LOOKUP && hit && CPU_Cache_buffer[68]) begin
    //     case (CPU_Cache_buffer[39:38])
    //         2'b00: wr0_en <= {count[0],3'b0}, wr1_en <= {count[1],3'b0};
    //         2'b01: wr0_en <= {1'b0,count[0],2'b0}, wr1_en <= {1'b0,count[1],2'b0};
    //         2'b10: wr0_en <= {2'b0,count[0],1'b0}, wr1_en <= {2'b0,count[1],1'b0};
    //         2'b11: wr0_en <= {3'b0,count[0]}, wr1_en <= {3'b0,count[1]};
    //         default: wr0_en <= 0, wr1_en <= 0;
    //     endcase
    // end
    // else 
    if(c_state == REFILL && ret_valid) begin
        wr0_en = { 4{count[0]} };
        wr1_en = { 4{count[1]} };
    end else begin
        wr0_en = 0;
        wr1_en = 0;
    end
        
end

// reg [255:0] way0_dirty;
// reg [255:0] way1_dirty;
// always @(posedge clk) begin
//     if(c_state == REFILL) begin
//         way0_dirty[CPU_Cache_buffer[47:40]] <= CPU_Cache_buffer[68] && count[0];
//         way1_dirty[CPU_Cache_buffer[47:40]] <= CPU_Cache_buffer[68] && count[1];
//     end
// end
//


always @(posedge clk) begin
    if(hit) begin
        case (offset)
            2'd0: rdata = ({ 32{hit_way[0]} } && way0_block[31:0]) | ({ 32{hit_way[1]} } && way1_block[31:0]);
            2'd1: rdata = ({ 32{hit_way[0]} } && way0_block[63:32]) | ({ 32{hit_way[1]} } && way1_block[63:32]);
            2'd2: rdata = ({ 32{hit_way[0]} } && way0_block[95:64]) | ({ 32{hit_way[1]} } && way1_block[95:64]);
            2'd3: rdata = ({ 32{hit_way[0]} } && way0_block[127:96]) | ({ 32{hit_way[1]} } && way1_block[127:96]);
            default: rdata = 0;
        endcase
    end else if (ret_valid)begin
        case (offset)
            2'd0: rdata = ret_data[31:0];
            2'd1: rdata = ret_data[63:32];
            2'd2: rdata = ret_data[95:64];
            2'd3: rdata = ret_data[127:96];
            default: rdata = 0;
        endcase
    end

end


always @(offset,hit_way,way0_block,way1_block) begin
    case (offset)
        2'd0: rdata = ({ 32{hit_way[0]} } && way0_block[31:0]) || ({ 32{hit_way[1]} } && way1_block[31:0]);
        2'd1: rdata = ({ 32{hit_way[0]} } && way0_block[63:32]) || ({ 32{hit_way[1]} } && way1_block[63:32]);
        2'd2: rdata = ({ 32{hit_way[0]} } && way0_block[95:64]) || ({ 32{hit_way[1]} } && way1_block[95:64]);
        2'd3: rdata = ({ 32{hit_way[0]} } && way0_block[127:96]) || ( {32{hit_way[1]} } && way1_block[127:96]);
        default: rdata = 0;
    endcase
end


wire [7:0] addra;
assign ram_tag_addr =CPU_Cache_buffer[47:40];
ram_tag icache_way0_tagv(
    .clka(clk),
    .ena(wr0_en[0] || wr0_en[1] || wr0_en[2] || wr0_en[3]),
    .addra(ram_tag_addr),
    .dina({CPU_Cache_buffer[67:48],1'b1 }),
    .douta({way0_tag,way0_v})
);

ram_tag icache_way1_tagv(
    .clka(clk),
    .ena(wr1_en[0] || wr1_en[1] || wr1_en[2] || wr1_en[3]),
    .addra(ram_tag_addr),
    .dina({CPU_Cache_buffer[67:48],1'b1 }),
    .douta({way1_tag,way1_v})
);


ram_bank icache_way0_bank0(
    .clka(clk),
    .ena(wr0_en[0]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[31:0]),
    .douta(way0_block[31:0])
);
ram_bank icache_way0_bank1(
    .clka(clk),
    .ena(wr0_en[1]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[63:32]),
    .douta(way0_block[63:32])
);
ram_bank icache_way0_bank2(
    .clka(clk),
    .ena(wr0_en[2]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[95:64]),
    .douta(way0_block[95:64])
);
ram_bank icache_way0_bank3(
    .clka(clk),
    .ena(wr0_en[3]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[127:96]),
    .douta(way0_block[127:96])
);

ram_bank icache_way1_bank0(
    .clka(clk),
    .ena(wr1_en[0]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[31:0]),
    .douta(way1_block[31:0])
);
ram_bank icache_way1_bank1(
    .clka(clk),
    .ena(wr1_en[1]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[63:32]),
    .douta(way1_block[63:32])
);
ram_bank icache_way1_bank2(
    .clka(clk),
    .ena(wr1_en[2]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[95:64]),
    .douta(way1_block[95:64])
);
ram_bank icache_way1_bank3(
    .clka(clk),
    .ena(wr1_en[3]),
    .addra(CPU_Cache_buffer[47:40]),
    .dina(ram_write_data[127:96]),
    .douta(way1_block[127:96])
);


endmodule