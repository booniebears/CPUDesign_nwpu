
// parameter   W_IDLE = 0,
//             W_WRITE = 1;


//我直接写了dcache，icache在dcache的基础上将写操作屏蔽即可
//还没来得及调试，因为没有按照CPU设计实战上写，暂时还没有问学长如何调试（可能会有点小问题）。
//端口信号和在CPU设计实战上做了改动，与AXI的通信使用了一次性128位，并由此删除了一些不必要信号。

module dcache (
    
    //与CPU流水线的交互接口
    input clk,
    input reset,
    input d_valid,
    input d_op,
    input [7:0] d_index,
    input [19:0] d_tag,//d_tag 和 v 放在ram里面，d 使用regfile存储
    input [3:0] d_offset,
    input [31:0] d_wdata,
    input [3:0] d_wstrb,
    output d_addr_ok,
    output reg d_data_ok,
    output reg [31:0] d_rdata,

    //与AXI总线接口的交互接口
    output reg d_rd_req,
    output [31:0] d_rd_addr,
    input d_rd_rdy,
    input d_ret_valid,
    input [127:0] d_ret_data,
    // output d_wr_strb,
    output reg d_wr_req,
    input d_wr_rdy,
    output [31:0] d_wr_addr,
    output [127:0] d_wr_data,



    output reg ud_rd_req,
    output [31:0] ud_rd_addr,
    input ud_rd_rdy,
    input ud_ret_valid,
    input [31:0] ud_ret_data,
    output [3:0] ud_wr_strb,
    output reg ud_wr_req,
    input ud_wr_rdy,
    output [31:0] ud_wr_addr,
    output [31:0] ud_wr_data

);
parameter   IDLE = 3'd0,
            LOOKUP = 3'd1,
            MISS = 3'd2,
            REPLACE = 3'd3,
            REFILL = 3'd4;

reg [69:0] d_CPU_Cache_buffer;


wire [127:0] d_way0_block;
wire [127:0] d_way1_block;

wire        d_chose_dirty;
wire [ 1:0] d_hit_way;
wire        d_hit;
wire [31:0] RAddr;
wire        isUncache;

reg  [ 1:0] d_count;
always @(posedge clk)begin
    if(d_hit_way[0]) begin
        d_count[0] = 1;
        d_count[1] = 0;
    end else begin
        d_count[0] = 1;
        d_count[1] = 0;
    end
end


reg [2:0] d_c_state;
reg [2:0] d_n_state;

always @(posedge clk) begin
    if(reset) begin
        d_c_state <= IDLE;
    end else begin
        d_c_state <= d_n_state;
    end    
end

reg d_isAgain;

always @(*) begin
    if(reset) begin
        d_n_state <= IDLE;
    end else begin
        case (d_c_state)
            IDLE: begin
                if(d_valid || d_isAgain) //如果CPU发出请求(请求与Hit Write冲突暂未考虑)
                    d_n_state <= LOOKUP;
                else
                    d_n_state <= IDLE;
            end
            LOOKUP: begin
                if(d_hit && d_valid) //如果命中并且CPU发出请求
                    d_n_state <= LOOKUP;
                else if(d_hit && !d_valid) //如果命中但是CPU没发出请求
                    d_n_state <= IDLE;
                else
                    d_n_state <= MISS;
            end
            MISS: begin
                if(~isUncache)begin
                    if(d_wr_rdy || !d_chose_dirty)//如果可以写入,代表着AXI那边没有在写，说明可以把脏页写出；或者选择替换的不是脏页
                        d_n_state <= REPLACE;
                    else
                        d_n_state <= MISS;
                end 
                else begin // uncache
                    if(d_CPU_Cache_buffer[68])begin // 如果是store
                        if(ud_wr_rdy) d_n_state <= IDLE;
                        else d_n_state <= MISS;
                    end else begin // 如果是load
                        d_n_state <= REPLACE;
                    end                    
                end
            end
            REPLACE: begin
                if(~isUncache)begin
                    if(d_rd_rdy)//AXI总线可以接受读请求
                        d_n_state <= REFILL;
                    else
                        d_n_state <= REPLACE;
                end
                else begin
                    if(ud_rd_rdy)
                        d_n_state <= REFILL;
                    else
                        d_n_state <= REPLACE;
                end
                
            end
            REFILL: begin
                if(d_ret_valid || ud_ret_valid)//AXI总线返回读数据 或者 要写
                    d_n_state <= IDLE;
                else
                    d_n_state <= REFILL;
            end
            default: 
                d_n_state <= IDLE;
        endcase
    
    end
end


//cache是否能够接收地址
// always @(posedge clk) begin
//     if(d_c_state == IDLE || d_c_state == LOOKUP && d_hit)
//         d_addr_ok <= 1;
//     else
//         d_addr_ok <= 0;
// end

always @(posedge clk) begin
    if(d_c_state == MISS & ~d_CPU_Cache_buffer[68] & ~isUncache)
        d_isAgain <= 1;
    else if(d_c_state == IDLE)
        d_isAgain <= 0;
end

assign d_addr_ok = ( d_c_state == IDLE && ~d_isAgain ) || d_c_state == LOOKUP && d_hit;

always @(*) begin
    if(d_CPU_Cache_buffer[68] && d_c_state == LOOKUP)begin
        d_data_ok <= 1;
    end
    else begin
        if(~isUncache) begin
            if(d_c_state == LOOKUP)begin //TODO:目前遇到load类指令都暂停一个时钟周期
                if(d_hit) begin
                    d_data_ok <= 1;
                end
                else begin
                    d_data_ok <= 0;
                end
            end 
            
            else begin
                d_data_ok <= 0;
            end
        end
        else begin // isUncache
            if(d_c_state == REFILL & ud_ret_valid) begin
                d_data_ok <= 1;
            end
            else
                d_data_ok <= 0;
        end
    end
    
end

    


always @(posedge clk) begin
    if(reset) begin
        d_CPU_Cache_buffer <= 70'b0;
    end else if(d_c_state == IDLE && d_valid || d_c_state == LOOKUP && d_hit && d_valid) 
    d_CPU_Cache_buffer <= {
        d_valid,// 69
        d_op, // 68  (1 is store;  0 is load)
        d_tag,// [67:48]
        d_index,//[47:40]
        d_offset, // [39:36]
        d_wstrb, // [35:32]
        d_wdata // [31:0]
    };
end

wire [19:0] d_way0_tag;
wire [19:0] d_way1_tag;

wire d_way0_v;
wire d_way1_v;

assign d_hit_way[0] = (d_way0_tag == RAddr[31:12] ) && d_way0_v;
assign d_hit_way[1] = (d_way1_tag == RAddr[31:12] ) && d_way1_v;


assign d_hit = (~isUncache) ? d_hit_way[0] || d_hit_way[1] : 1'b0;




assign d_rd_addr  = {RAddr[31:4],4'b0};
assign ud_rd_addr = RAddr;

always @(*) begin
    if(d_c_state == MISS && d_chose_dirty && ~isUncache)
        d_wr_req <= d_wr_rdy;
    else if(d_c_state == MISS && !d_chose_dirty)
        d_wr_req <= 0;
    else
        d_wr_req <= 0;

end

always @(*) begin
    if(d_c_state == MISS  && isUncache && d_CPU_Cache_buffer[68])
        ud_wr_req <= ud_wr_rdy;
    else
        ud_wr_req <= 0;

end

reg [255:0] d_way0_dirty;
reg [255:0] d_way1_dirty;

assign d_wr_addr = { d_way0_tag, d_CPU_Cache_buffer[47:40],4'b0}; //TODO 2路没有加

assign d_wr_data = { 128{d_count[0] && d_way0_v} } && d_way0_block ||
                    { 128{d_count[1] && d_way1_v} } && d_way1_block;
assign d_chose_dirty = d_count[0] && d_way0_dirty[ d_CPU_Cache_buffer[47:40] ] || 
                        d_count[1] && d_way1_dirty[ d_CPU_Cache_buffer[47:40] ];

always @(posedge clk) begin
    if(d_c_state == REPLACE && ~isUncache)
        d_rd_req <= d_rd_rdy;
    else
        d_rd_req <= 0;
end

always @(posedge clk) begin
    if(d_c_state == REPLACE && isUncache)
        ud_rd_req <= ud_rd_rdy;
    else
        ud_rd_req <= 0;
end

reg [127:0] d_ram_write_data;
always @(posedge clk) begin //TODO:逻辑我不太理解?
    if(d_CPU_Cache_buffer[68]) begin //TODO:逻辑可以优化,这里显得比较复杂
        case (d_CPU_Cache_buffer[35:32]) //wstrb 没有分清楚store的几种类型
            4'b0001:begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_rdata[31:8],d_CPU_Cache_buffer[7:0] } : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_rdata[31:8], d_CPU_Cache_buffer[7:0] } : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_rdata[31:8], d_CPU_Cache_buffer[7:0] } : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? {d_rdata[31:8], d_CPU_Cache_buffer[7:0] } : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b0010:begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_rdata[31:16],d_CPU_Cache_buffer[15:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_rdata[31:16],d_CPU_Cache_buffer[15:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_rdata[31:16],d_CPU_Cache_buffer[15:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? {d_rdata[31:16],d_CPU_Cache_buffer[15:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b0100:begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_rdata[31:24],d_CPU_Cache_buffer[23:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_rdata[31:24],d_CPU_Cache_buffer[23:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_rdata[31:24],d_CPU_Cache_buffer[23:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? {d_rdata[31:24],d_CPU_Cache_buffer[23:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b1000:begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_CPU_Cache_buffer[31:24],d_rdata[23:0]} : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_CPU_Cache_buffer[31:24],d_rdata[23:0]} : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_CPU_Cache_buffer[31:24],d_rdata[23:0]} : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? {d_CPU_Cache_buffer[31:24],d_rdata[23:0]} : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b0011:begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_rdata[31:16],d_CPU_Cache_buffer[15:0] } : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_rdata[31:16], d_CPU_Cache_buffer[15:0] } : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_rdata[31:16], d_CPU_Cache_buffer[15:0] } : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? {d_rdata[31:16], d_CPU_Cache_buffer[15:0] } : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b1100:begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_CPU_Cache_buffer[31:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_CPU_Cache_buffer[31:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_CPU_Cache_buffer[31:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? {d_CPU_Cache_buffer[31:16],d_rdata[15:0]} : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b0111: begin 
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_rdata[31:24],d_CPU_Cache_buffer[23:0]} : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_rdata[31:24], d_CPU_Cache_buffer[23:0] } : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_rdata[31:24], d_CPU_Cache_buffer[23:0] } : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ?{d_rdata[31:24], d_CPU_Cache_buffer[23:0] } : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b1110: begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? {d_CPU_Cache_buffer[31:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? {d_CPU_Cache_buffer[31:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? {d_CPU_Cache_buffer[31:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ?{d_CPU_Cache_buffer[31:8],d_rdata[7:0]} : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            4'b1111: begin //d_CPU_Cache_buffer[39:38] 关注offset高两位
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[127:96] : 0;
            end
            default:begin
                d_ram_write_data[31:0] <= d_CPU_Cache_buffer[39:38] == 2'b00 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[31:0] : 0;
                d_ram_write_data[63:32] <= d_CPU_Cache_buffer[39:38] == 2'b01 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[63:32] : 0;
                d_ram_write_data[95:64] <= d_CPU_Cache_buffer[39:38] == 2'b10 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[95:64] : 0;
                d_ram_write_data[127:96] <= d_CPU_Cache_buffer[39:38] == 2'b11 ? d_CPU_Cache_buffer[31:0] : d_ret_valid ? d_ret_data[127:96] : 0;
            end
        endcase
        
    end else begin
        d_ram_write_data <= d_ret_valid ? d_ret_data : 0;
    end
end


reg[3:0] d_wr0_en;
reg[3:0] d_wr1_en;
always @(posedge clk) begin
    if(d_c_state == LOOKUP && d_hit && d_CPU_Cache_buffer[68]) begin
        case (d_CPU_Cache_buffer[39:38])
            2'b00:begin
                d_wr0_en <= {3'b0,d_count[0]};
                d_wr1_en <= {3'b0,d_count[1]};
            end
            2'b01:begin
                d_wr0_en <= {2'b0,d_count[0],1'b0};
                d_wr1_en <= {2'b0,d_count[1],1'b0};
            end
            2'b10:begin
                d_wr0_en <= {1'b0,d_count[0],2'b0};
                d_wr1_en <= {1'b0,d_count[1],2'b0};
            end
            2'b11:begin
                d_wr0_en <= {d_count[0],3'b0};
                d_wr1_en <= {d_count[1],3'b0};
            end
            default:begin
                d_wr0_en <= 0;
                d_wr1_en <= 0;
            end
        endcase
    end else if(d_c_state == REFILL && d_ret_valid) begin
        d_wr0_en <= { 4{d_count[0]} };
        d_wr1_en <= { 4{d_count[1]} };
    end else begin
        d_wr0_en <= 0;
        d_wr1_en <= 0;
    end
        
end


always @(posedge clk) begin
    if(reset)begin
        d_way0_dirty <= 256'b0;
        d_way1_dirty <= 256'b0;
    end else if(d_c_state == REFILL) begin
        d_way0_dirty[d_CPU_Cache_buffer[47:40]] <= d_CPU_Cache_buffer[68] && d_count[0];
        d_way1_dirty[d_CPU_Cache_buffer[47:40]] <= d_CPU_Cache_buffer[68] && d_count[1];
    end
end



always @(*) begin
    if(d_c_state == LOOKUP & ~isUncache) begin
         case (d_CPU_Cache_buffer[39:38])//offest[3:2]
            2'd0: d_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[31:0]) | ({ 32{d_hit_way[1]} } & d_way1_block[31:0]);
            2'd1: d_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[63:32]) | ({ 32{d_hit_way[1]} } & d_way1_block[63:32]);
            2'd2: d_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[95:64]) | ({ 32{d_hit_way[1]} } & d_way1_block[95:64]);
            2'd3: d_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[127:96]) | ({ 32{d_hit_way[1]} } & d_way1_block[127:96]);
            default: d_rdata <= 0;
        endcase
    end
    else if(d_c_state == REFILL & isUncache & ud_ret_valid)begin
        d_rdata <= ud_ret_data;
    end
    else begin
        d_rdata <= d_rdata;
    end
    
end

assign ud_wr_strb = d_CPU_Cache_buffer[35:32];
assign ud_wr_addr = RAddr;
assign ud_wr_data = d_CPU_Cache_buffer[31:0];


wire [7:0] d_ram_tag_addr;
assign  d_ram_tag_addr =d_CPU_Cache_buffer[47:40];
ram_tag dcache_way0_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[0] || d_wr0_en[1] || d_wr0_en[2] || d_wr0_en[3]),
    .addra(d_ram_tag_addr),
    .dina({RAddr[31:12],1'b1 }),
    .douta({d_way0_tag,d_way0_v})
);
wire [19:0] debug_in_tag;
assign debug_in_tag = RAddr[31:12];

ram_tag dcache_way1_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[0] || d_wr0_en[1] || d_wr0_en[2] || d_wr0_en[3]),
    .addra(d_ram_tag_addr),
    .dina({RAddr[31:12],1'b1 }),
    .douta({d_way1_tag,d_way1_v})
);


ram_bank dcache_way0_bank0(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[0]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[31:0]),
    .douta(d_way0_block[31:0])
);
ram_bank dcache_way0_bank1(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[1]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[63:32]),
    .douta(d_way0_block[63:32])
);
ram_bank dcache_way0_bank2(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[2]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[95:64]),
    .douta(d_way0_block[95:64])
);
ram_bank dcache_way0_bank3(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[3]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[127:96]),
    .douta(d_way0_block[127:96])
);

ram_bank dcache_way1_bank0(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[0]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[31:0]),
    .douta(d_way1_block[31:0])
);
ram_bank dcache_way1_bank1(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[1]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[63:32]),
    .douta(d_way1_block[63:32])
);
ram_bank dcache_way1_bank2(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[2]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[95:64]),
    .douta(d_way1_block[95:64])
);
ram_bank dcache_way1_bank3(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[3]),
    .addra(d_CPU_Cache_buffer[47:40]),
    .dina(d_ram_write_data[127:96]),
    .douta(d_way1_block[127:96])
);

V2RConvert U_DCache_V2RConvert(
    .VAddr(d_CPU_Cache_buffer[67:36]),
    .RAddr(RAddr),
    .isUncache(isUncache)
);

endmodule