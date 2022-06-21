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
    output reg d_addr_ok,
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
    output [31:0] ud_wr_data,
    input  isUncache
);
parameter   IDLE = 3'd0,
            LOOKUP = 3'd1,
            MISS_and_DIRTY = 3'd2,
            MISS_and_CLEAN = 3'd3,
            REFILL = 3'd4,
            UNCACHE_LOAD = 3'd5,
            UNCACHE_STORE = 3'd6,
            UNCACHE_RETURN = 3'd7;

reg [2:0] dcache_c_state;
reg [2:0] dcache_n_state;

wire [ 1:0] d_hit_way;
wire        d_hit;

wire [19:0] d_way0_tag;
wire [19:0] d_way1_tag;

//wire [31:0] RAddr;
reg  [ 1:0] d_count;

reg [31:0] uncache_data;
reg [31:0] cache_data;

wire        d_chose_dirty;
reg [255:0] d_way0_dirty;
reg [255:0] d_way1_dirty;

reg [69:0] dcache_CPU2Cache_buffer;

reg d_isAgain;

reg[3:0] d_wr0_en;
reg[3:0] d_wr1_en;

reg [127:0] d_ram_write_data;

wire [127:0] d_way0_block;
wire [127:0] d_way1_block;

//ADD???

wire d_way0_v;
wire d_way1_v;

always @(*) begin
    if(reset) begin
        dcache_CPU2Cache_buffer <= 70'b0;
    end
    else begin
        if(d_addr_ok)begin
            dcache_CPU2Cache_buffer <= {
                d_valid,// 69
                d_op, // 68  (1 is store;  0 is load)
                d_tag,// [67:48]
                d_index,//[47:40]
                d_offset, // [39:36]
                d_wstrb, // [35:32]
                d_wdata // [31:0]
            };
        end
        else begin
            dcache_CPU2Cache_buffer <= dcache_CPU2Cache_buffer;
        end
    end
end

always @(posedge clk) begin
    if(reset) begin
        dcache_c_state <= IDLE;
    end else begin
        dcache_c_state <= dcache_n_state;
    end    
end

reg[7:0] pre_index;
always @(posedge clk) begin
    pre_index <= dcache_CPU2Cache_buffer[47:40];
end

reg block_once;
always @(*) begin
    if(dcache_c_state == LOOKUP  && ( pre_index != dcache_CPU2Cache_buffer[47:40]) ) begin
        block_once <= 1;
    end
    else begin
        block_once <= 0;
    end
end


always @(*) begin
    if(reset) begin
        dcache_n_state <= IDLE;
    end
    else begin
        case(dcache_c_state)
            IDLE:
                begin
                    if(d_valid) begin
                        if(isUncache)begin
                            if(dcache_CPU2Cache_buffer[68]) dcache_n_state <= UNCACHE_STORE;
                            else dcache_n_state <= UNCACHE_LOAD;
                        end
                        else begin
                            dcache_n_state <= LOOKUP;
                        end
                    end
                    else if(d_isAgain) begin
                        dcache_n_state <= LOOKUP;
                    end
                    else begin
                        dcache_n_state <= IDLE;
                    end
                end
            UNCACHE_LOAD:
                begin
                    if(ud_rd_rdy)begin
                        dcache_n_state <= UNCACHE_RETURN;
                    end
                    else begin
                        dcache_n_state <= UNCACHE_LOAD;
                    end
                end
            UNCACHE_STORE:
                begin
                    if(ud_wr_rdy)begin
                        dcache_n_state <= IDLE;
                    end
                    else begin
                        dcache_n_state <= UNCACHE_STORE;
                    end
                end
            UNCACHE_RETURN:
                begin
                    if(ud_ret_valid)begin
                        dcache_n_state <= IDLE;
                    end
                    else begin
                        dcache_n_state <= UNCACHE_RETURN;
                    end
                end
            LOOKUP:
                begin
                    if(d_hit && d_valid || block_once) begin
                        dcache_n_state <= LOOKUP;
                    end
                    else if(d_hit && ~d_valid) begin
                        dcache_n_state <= IDLE;
                    end
                    else begin
                        if(d_chose_dirty)
                            dcache_n_state <= MISS_and_DIRTY;
                        else
                            dcache_n_state <= MISS_and_CLEAN;
                    end

                end
            MISS_and_DIRTY:
                begin
                    if(d_wr_rdy)begin
                        dcache_n_state <= MISS_and_CLEAN;
                    end
                    else begin
                        dcache_n_state <= MISS_and_DIRTY;
                    end
                end
            MISS_and_CLEAN:
                begin
                    if(d_rd_rdy)begin
                        dcache_n_state <= REFILL;
                    end
                    else begin
                        dcache_n_state <= MISS_and_CLEAN;
                    end
                end
            REFILL:
                begin
                    if(d_ret_valid)begin
                        dcache_n_state <= IDLE;
                    end
                    else begin
                        dcache_n_state <= REFILL;
                    end
                end
            default:
                begin
                    dcache_n_state <= IDLE;
                end
        endcase
                
                
    end
end

always @(posedge clk) begin
    if(dcache_c_state == MISS_and_CLEAN & ~dcache_CPU2Cache_buffer[68])
        d_isAgain <= 1;
    else if(dcache_c_state == IDLE)// LOOKUP?
        d_isAgain <= 0;
end

always @(*) begin
    if(dcache_c_state == MISS_and_CLEAN)
        d_rd_req <= d_rd_rdy;
    else
        d_rd_req <= 0;
end

reg [31:0] timely_rdata;
always @(posedge clk) begin
    d_rdata <= timely_rdata;
end


always @(*) begin
    if(dcache_c_state == LOOKUP)begin
        if(d_hit)begin
        case(dcache_CPU2Cache_buffer[39:38])//offest[3:2]
            2'd0: timely_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[31:0]) | ({ 32{d_hit_way[1]} } & d_way1_block[31:0]);
            2'd1: timely_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[63:32]) | ({ 32{d_hit_way[1]} } & d_way1_block[63:32]);
            2'd2: timely_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[95:64]) | ({ 32{d_hit_way[1]} } & d_way1_block[95:64]);
            2'd3: timely_rdata <= ({ 32{d_hit_way[0]} } & d_way0_block[127:96]) | ({ 32{d_hit_way[1]} } & d_way1_block[127:96]);
            default: timely_rdata <= 0;
        endcase
        end
        else begin
            timely_rdata <= timely_rdata;
        end
    end
    else if(dcache_c_state == UNCACHE_RETURN)begin
        timely_rdata <= ud_ret_data;
    end
    else begin
        timely_rdata <= timely_rdata;
    end
end

always @(*) begin
    if(dcache_c_state == LOOKUP && d_hit)begin
        d_data_ok <= ~block_once;
    end
    else if(dcache_c_state == LOOKUP && dcache_CPU2Cache_buffer[68])begin
        d_data_ok <= ~block_once;
    end
    else if(dcache_c_state == UNCACHE_RETURN && ud_ret_valid)begin
        d_data_ok <= 1;
    end
    else if(dcache_c_state == REFILL && d_ret_valid && ~dcache_CPU2Cache_buffer[68])begin//store 在这里不需要返回dataok
        d_data_ok <= 1;
    end
    //TODO:对于Uncache的store,也需要等到存好之后再放行流水线
    else if(dcache_c_state == UNCACHE_STORE && ud_wr_rdy)begin 
        d_data_ok <= 1;
    end
    else begin
        d_data_ok <= 0;
    end
end

always @(*) begin
    if(dcache_c_state == IDLE && ~d_isAgain)begin
        d_addr_ok <= 1;
    end
    else if(dcache_c_state == LOOKUP && d_hit)begin
        d_addr_ok <= ~block_once;
    end
    else begin
        d_addr_ok <= 0;
    end
end



always @(*) begin
    if(dcache_c_state == MISS_and_DIRTY )
        d_wr_req <= d_wr_rdy;
    else
        d_wr_req <= 0;

end

assign d_wr_addr = d_count[0] ? { d_way0_tag, dcache_CPU2Cache_buffer[47:40],4'b0} 
                                : {d_way1_tag,dcache_CPU2Cache_buffer[47:40], 4'b0}; 

assign d_wr_data = { 128{d_count[0] && d_way0_v} } && d_way0_block ||
                    { 128{d_count[1] && d_way1_v} } && d_way1_block;


always @(*) begin
    if(dcache_c_state == UNCACHE_LOAD) begin
        ud_rd_req <= ud_rd_rdy;
    end
    else begin
        ud_rd_req <= 0;
    end
end

always @(*) begin
    if(dcache_c_state == UNCACHE_STORE) begin
        ud_wr_req <= ud_wr_rdy;
    end
    else begin
        ud_wr_req <= 0;
    end
end

always @(posedge clk) begin
    if(ud_ret_valid)
        uncache_data <= ud_ret_data;
end

assign d_rd_addr  = {dcache_CPU2Cache_buffer[67:40],4'b0};
assign ud_rd_addr = dcache_CPU2Cache_buffer[67:36];

assign ud_wr_strb = dcache_CPU2Cache_buffer[35:32];
assign ud_wr_addr = dcache_CPU2Cache_buffer[67:36];
assign ud_wr_data = dcache_CPU2Cache_buffer[31:0];

always @(posedge clk)begin
    if(d_hit_way[0]) begin
        d_count[0] = 1;
        d_count[1] = 0;
    end else begin
        d_count[0] = 1;
        d_count[1] = 0;
    end
end

assign d_hit_way[0] = (d_way0_tag == dcache_CPU2Cache_buffer[67:48]) && d_way0_v;
assign d_hit_way[1] = (d_way1_tag == dcache_CPU2Cache_buffer[67:48] ) && d_way1_v;

assign d_hit = d_hit_way[0] || d_hit_way[1] ;//第一个时钟沿发来请求，下个时钟沿一定准确

assign d_chose_dirty = d_count[0] && d_way0_dirty[ dcache_CPU2Cache_buffer[47:40] ] || 
                        d_count[1] && d_way1_dirty[ dcache_CPU2Cache_buffer[47:40] ];

always @(posedge clk) begin
    if(reset)begin
        d_way0_dirty <= 256'b0;
        d_way1_dirty <= 256'b0;
    end else if(dcache_c_state == MISS_and_DIRTY)begin
        d_way0_dirty[dcache_CPU2Cache_buffer[47:40]] <= 1'b0;
        d_way1_dirty[dcache_CPU2Cache_buffer[47:40]] <= 1'b0;
    end
    else if(dcache_c_state == REFILL && dcache_CPU2Cache_buffer[68]) begin
        d_way0_dirty[dcache_CPU2Cache_buffer[47:40]] <= dcache_CPU2Cache_buffer[68] && d_count[0];
        d_way1_dirty[dcache_CPU2Cache_buffer[47:40]] <= dcache_CPU2Cache_buffer[68] && d_count[1];
    end
end

always @(*) begin
    if(dcache_c_state == LOOKUP && d_hit && dcache_CPU2Cache_buffer[68]) begin
        case (dcache_CPU2Cache_buffer[39:38])
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
                d_wr0_en <= 4'b0;
                d_wr1_en <= 4'b0;
            end
        endcase
    end else if(dcache_c_state == REFILL && d_ret_valid) begin
        d_wr0_en <= { 4{d_count[0]} };
        d_wr1_en <= { 4{d_count[1]} };
    end else begin
        d_wr0_en <= 4'b0;
        d_wr1_en <= 4'b0;
    end
        
end

wire [127:0] original_data;
assign original_data = d_hit ? (d_count[0] ? d_way0_block : d_way1_block) : d_ret_data;


always @(*) begin
    if( (dcache_c_state == LOOKUP && d_hit) || dcache_c_state == REFILL && d_ret_valid)begin
        if(dcache_CPU2Cache_buffer[68]) begin //TODO:逻辑可以优化,这里显得比较复杂
            case (dcache_CPU2Cache_buffer[35:32]) //wstrb
                4'b0001:begin
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {original_data[31:8],dcache_CPU2Cache_buffer[7:0] } : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {original_data[63:40],dcache_CPU2Cache_buffer[7:0] } : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {original_data[95:72],dcache_CPU2Cache_buffer[7:0] } : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {original_data[127:104],dcache_CPU2Cache_buffer[7:0] } : original_data[127:96];
                end
                4'b0010:begin
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {original_data[31:16],dcache_CPU2Cache_buffer[15:8], original_data[7:0]} : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {original_data[63:48],dcache_CPU2Cache_buffer[15:8], original_data[39:32]} : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {original_data[95:80],dcache_CPU2Cache_buffer[15:8], original_data[71:64]} : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {original_data[127:112],dcache_CPU2Cache_buffer[15:8], original_data[103:96]} : original_data[127:96];
                end
                4'b0100:begin
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {original_data[31:24],dcache_CPU2Cache_buffer[23:16], original_data[15:0]} : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {original_data[63:56],dcache_CPU2Cache_buffer[23:16], original_data[47:32]} : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {original_data[95:88],dcache_CPU2Cache_buffer[23:16], original_data[79:64]} : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {original_data[127:120],dcache_CPU2Cache_buffer[23:16], original_data[111:96]} : original_data[127:96];
                end
                4'b1000:begin
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {dcache_CPU2Cache_buffer[31:24],original_data[23:0]} : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {dcache_CPU2Cache_buffer[31:24],original_data[55:32]} : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {dcache_CPU2Cache_buffer[31:24],original_data[87:64]} : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {dcache_CPU2Cache_buffer[31:24],original_data[119:96]} : original_data[127:96];
                end
                4'b0011:begin
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {original_data[31:16],dcache_CPU2Cache_buffer[15:0]} : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {original_data[63:48],dcache_CPU2Cache_buffer[15:0]} : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {original_data[95:80],dcache_CPU2Cache_buffer[15:0]} : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {original_data[127:112],dcache_CPU2Cache_buffer[15:0]} : original_data[127:96];
                end
                4'b1100:begin
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {dcache_CPU2Cache_buffer[31:16],original_data[15:0]} : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {dcache_CPU2Cache_buffer[31:16],original_data[47:32]} : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {dcache_CPU2Cache_buffer[31:16],original_data[79:64]} : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {dcache_CPU2Cache_buffer[31:16],original_data[111:96]} : original_data[127:96];
                end
                4'b0111: begin 
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {original_data[31:24],dcache_CPU2Cache_buffer[23:0]} : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {original_data[63:56],dcache_CPU2Cache_buffer[23:0]} : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {original_data[95:88],dcache_CPU2Cache_buffer[23:0]} : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {original_data[127:120],dcache_CPU2Cache_buffer[23:0]} : original_data[127:96];
                end
                4'b1110: begin
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? {dcache_CPU2Cache_buffer[31:8],original_data[7:0]} : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? {dcache_CPU2Cache_buffer[31:8],original_data[39:32]} : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? {dcache_CPU2Cache_buffer[31:8],original_data[71:64]} : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? {dcache_CPU2Cache_buffer[31:8],original_data[103:96]} : original_data[127:96];
                end
                4'b1111: begin //dcache_CPU2Cache_buffer[39:38] 关注offset高两位
                    d_ram_write_data[31:0] <= dcache_CPU2Cache_buffer[39:38] == 2'b00 ? dcache_CPU2Cache_buffer[31:0] : original_data[31:0];
                    d_ram_write_data[63:32] <= dcache_CPU2Cache_buffer[39:38] == 2'b01 ? dcache_CPU2Cache_buffer[31:0] : original_data[63:32];
                    d_ram_write_data[95:64] <= dcache_CPU2Cache_buffer[39:38] == 2'b10 ? dcache_CPU2Cache_buffer[31:0] : original_data[95:64];
                    d_ram_write_data[127:96] <= dcache_CPU2Cache_buffer[39:38] == 2'b11 ? dcache_CPU2Cache_buffer[31:0] : original_data[127:96];
                end
                default:begin
                    d_ram_write_data <= original_data;
                end
            endcase
            
        end else begin
            d_ram_write_data <= d_ret_valid ? d_ret_data : d_ram_write_data;
        end
    end
    else begin
        d_ram_write_data <= d_ram_write_data;
    end
end

//V2RConvert U_DCache_V2RConvert(
//    .VAddr(dcache_CPU2Cache_buffer[67:36]),
//    .RAddr(RAddr),
//    .isUncache(isUncache)
//);

ram_tag dcache_way0_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[0] || d_wr0_en[1] || d_wr0_en[2] || d_wr0_en[3]),
    .addra(dcache_CPU2Cache_buffer[47:40]),//index
    .dina({dcache_CPU2Cache_buffer[67:48],1'b1 } ),
    .douta({d_way0_tag,d_way0_v})
);

ram_tag dcache_way1_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[0] || d_wr1_en[1] || d_wr1_en[2] || d_wr1_en[3]),
    .addra(dcache_CPU2Cache_buffer[47:40]),//index
    .dina({dcache_CPU2Cache_buffer[67:48],1'b1 }),
    .douta({d_way1_tag,d_way1_v})
);

reg [7:0] blank_wr_addr;
always @(posedge clk) begin
    blank_wr_addr <= dcache_CPU2Cache_buffer[47:40];
end

reg blank_wr;
always @(posedge clk) begin
    blank_wr <= d_wr0_en[0] || d_wr0_en[1] || d_wr0_en[2] || d_wr0_en[3] || d_wr1_en[0] || d_wr1_en[1] || d_wr1_en[2] || d_wr1_en[3];
end

wire [7:0] blank_addr;
assign blank_addr = dcache_CPU2Cache_buffer[47:40];

// assign blank_addr = blank_wr ? blank_wr_addr : dcache_CPU2Cache_buffer[47:40];

ram_bank dcache_way0_bank0(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[0]),
    .addra(blank_addr),
    .dina(d_ram_write_data[31:0]),
    .douta(d_way0_block[31:0])
);
ram_bank dcache_way0_bank1(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[1]),
    .addra(blank_addr),
    .dina(d_ram_write_data[63:32]),
    .douta(d_way0_block[63:32])
);
ram_bank dcache_way0_bank2(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[2]),
    .addra(blank_addr),
    .dina(d_ram_write_data[95:64]),
    .douta(d_way0_block[95:64])
);
ram_bank dcache_way0_bank3(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[3]),
    .addra(blank_addr),
    .dina(d_ram_write_data[127:96]),
    .douta(d_way0_block[127:96])
);

ram_bank dcache_way1_bank0(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[0]),
    .addra(blank_addr),
    .dina(d_ram_write_data[31:0]),
    .douta(d_way1_block[31:0])
);
ram_bank dcache_way1_bank1(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[1]),
    .addra(blank_addr),
    .dina(d_ram_write_data[63:32]),
    .douta(d_way1_block[63:32])
);
ram_bank dcache_way1_bank2(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[2]),
    .addra(blank_addr),
    .dina(d_ram_write_data[95:64]),
    .douta(d_way1_block[95:64])
);
ram_bank dcache_way1_bank3(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[3]),
    .addra(blank_addr),
    .dina(d_ram_write_data[127:96]),
    .douta(d_way1_block[127:96])
);


endmodule
