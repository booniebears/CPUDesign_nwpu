module icache(
    //与CPU流水线的交互接口
    input clk,
    input reset,
    input valid,
    input op,///TODO can delete
    input [7:0] index,
    input [19:0] tag,
    input [3:0] offset,
    input        flush, //TODO:当流水线flush(出现异常),rdata直接置零
    output addr_ok,
    output reg data_ok,
    output [31:0] rdata,

    //与AXI总线接口的交互接口
    output reg rd_req,
    output [31:0] rd_addr,
    input rd_rdy,
    input ret_valid,
    input [127:0] ret_data

);

parameter   IDLE = 3'd0,
            LOOKUP = 3'd1,
            MISS = 3'd2,
            REFILL = 3'd4,
            WAIT = 3'd5;

reg[3:0] wr0_en;
reg[3:0] wr1_en;

wire [127:0] way0_line;
wire [127:0] way1_line;

reg [2:0] c_state;
reg [2:0] n_state;

reg isAgain;

wire [19:0] way0_tag;
wire [19:0] way1_tag;

wire way0_v;
wire way1_v;

// 选择替换哪一路
reg [1:0] count;

// 哪一路hit
wire [1:0] hit_way;

// 最终hit结果
wire hit;

reg [32:0] final_req;
wire [32:0] CPU_req_timely;
reg  [32:0] CPU_req_buffer;

assign rd_addr = {final_req[31:4],4'b0};

always @(posedge clk) begin
    if(reset)begin
        isAgain <= 1'b0;
    end
    else if(c_state == MISS) begin
        isAgain <= 1;
    end
    else if(c_state == IDLE) begin
        isAgain <= 0;
    end
end

assign CPU_req_timely = {
                            valid,   // [32]
                            tag,    // [31:12]
                            index,  // [11:4]
                            offset // [3:0]
                        };


always @(posedge clk)begin
    if(hit_way[0]) begin
        count[0] = 1;
        count[1] = 0;
    end else begin
        count[0] = 1;
        count[1] = 0;
    end
end


always @(posedge clk) begin
    if(CPU_req_timely[32])
    CPU_req_buffer <= CPU_req_timely;
end



// reg choose_timely;
// always @(*) begin
//     if(c_state == IDLE || c_state == LOOKUP && hit)
//     choose_timely <= 1'b1;
//     else
//     choose_timely <= 1'b0;
// end
wire choose_timely;
assign choose_timely = isAgain ? 1'b0 : (c_state == IDLE || c_state == LOOKUP && hit) ? 1'b1 : 1'b0;

always @(*) begin
    if(choose_timely)
        final_req <= CPU_req_timely;
    else
        final_req <= CPU_req_buffer;
end



always @(posedge clk) begin
    if(reset) begin
        c_state <= IDLE;
    end else begin
        c_state <= n_state;
    end    
end

wire same_index;

always @(*) begin
    if(reset) begin
        n_state <= IDLE;
    end else begin
            case (c_state)
                IDLE: begin
                    if(final_req[32] || isAgain ) //如果CPU发出请求 
                        n_state <= LOOKUP;
                    else
                        n_state <= IDLE;
                end
                LOOKUP: begin
                    if(hit && final_req[32]) begin //如果命中并且CPU发出请求
                        if(same_index)
                            n_state <= LOOKUP;
                        else
                            n_state <= WAIT;
                        end
                    else if(hit && !final_req[32]) //如果命中但是CPU没发出请求
                        n_state <= IDLE;
                    else
                        n_state <= MISS;
                end
                MISS: begin
                    if(rd_rdy)//AXI总线可以接受读请求
                        n_state <= REFILL;
                    else
                        n_state <= MISS;
                end
                REFILL: begin
                    if(ret_valid)//AXI总线返回读数据 或者 要写
                        n_state <= IDLE;
                    else
                        n_state <= REFILL;
                end
                WAIT:begin
                    n_state <= LOOKUP;
                end
                default: 
                    n_state <= IDLE;
            endcase
    
    end
end

always @(posedge clk) begin
    if(c_state == MISS)
        rd_req <= rd_rdy;
    else
        rd_req <= 0;
end

reg [127:0] ram_write_data;
always @(posedge clk) begin
    ram_write_data <= ret_valid ? ret_data : 0;
end


always @(posedge clk) begin
    if(c_state == REFILL && ret_valid) begin
        wr0_en = { 4{count[0]} };
        wr1_en = { 4{count[1]} };
    end else begin
        wr0_en = 0;
        wr1_en = 0;
    end
        
end

reg [31:0] rdata_new;
always @(*) begin
    if(flush) rdata_new <= 32'b0; //TODO:当流水线flush(出现异常),rdata直接置零
    else if(c_state == LOOKUP ) begin 
         case (CPU_req_buffer[3:2])//offest[3:2]
            2'd0: rdata_new <= ({ 32{hit_way[0]} } & way0_line[31:0])  |  ({ 32{hit_way[1]} } & way1_line[31:0]);
            2'd1: rdata_new <= ({ 32{hit_way[0]} } & way0_line[63:32]) |  ({ 32{hit_way[1]} } & way1_line[63:32]);
            2'd2: rdata_new <= ({ 32{hit_way[0]} } & way0_line[95:64]) |  ({ 32{hit_way[1]} } & way1_line[95:64]);
            2'd3: rdata_new <= ({ 32{hit_way[0]} } & way0_line[127:96]) | ({ 32{hit_way[1]} } & way1_line[127:96]);
            default: rdata_new <= 32'b0;
        endcase
    end
    else begin
        rdata_new <= 0;
    end
end

reg [31:0] rdata_buffer;
always @(posedge clk) begin
    if(data_ok)
        rdata_buffer <= rdata_new;
end

always @(posedge clk) begin
    
end
assign rdata = data_ok ? rdata_new : rdata_buffer;

// 通过index索引出来的 两路tag 来判断哪一路命中


assign hit_way[0] = (way0_tag == tag) && way0_v;
assign hit_way[1] = (way1_tag == tag) && way1_v;



reg [7:0] pre_index;
always @(posedge clk) begin
    pre_index <= index;
end
assign same_index = index == pre_index;

assign hit = hit_way[0] || hit_way[1];

assign addr_ok = ( c_state == IDLE && ~isAgain ) || c_state == LOOKUP && hit;

always @(*) begin
    if(c_state == LOOKUP)begin
        if(hit) begin
            data_ok <= 1;
        end
        else begin
            data_ok <= 0;
        end
    end else begin
        data_ok <= 0;
    end
end
ram_tag icache_way0_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(wr0_en[0] || wr0_en[1] || wr0_en[2] || wr0_en[3]),
    .addra(CPU_req_timely[11:4]),
    .dina({final_req[31:12],1'b1 }),
    .douta({way0_tag,way0_v})
);

ram_tag icache_way1_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(wr1_en[0] || wr1_en[1] || wr1_en[2] || wr1_en[3]),
    .addra(CPU_req_timely[11:4]),
    .dina({final_req[31:12],1'b1 }),
    .douta({way1_tag,way1_v})
);

ram_bank icache_way0_bank0(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr0_en[0]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[31:0]),
    .douta(way0_line[31:0])
);
ram_bank icache_way0_bank1(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr0_en[1]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[63:32]),
    .douta(way0_line[63:32])
);
ram_bank icache_way0_bank2(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr0_en[2]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[95:64]),
    .douta(way0_line[95:64])
);
ram_bank icache_way0_bank3(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr0_en[3]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[127:96]),
    .douta(way0_line[127:96])
);

ram_bank icache_way1_bank0(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr1_en[0]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[31:0]),
    .douta(way1_line[31:0])
);
ram_bank icache_way1_bank1(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr1_en[1]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[63:32]),
    .douta(way1_line[63:32])
);
ram_bank icache_way1_bank2(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr1_en[2]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[95:64]),
    .douta(way1_line[95:64])
);
ram_bank icache_way1_bank3(
    .clka(clk),
    .ena(final_req[32]),
    .wea(wr1_en[3]),
    .addra(final_req[11:4]),
    .dina(ram_write_data[127:96]),
    .douta(way1_line[127:96])
);






endmodule