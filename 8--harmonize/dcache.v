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
    (*mark_debug = "true"*) output reg d_addr_ok,
    (*mark_debug = "true"*) output  d_data_ok,
    output reg [31:0] d_rdata,

    //与AXI总线接口的交互接口
    output reg d_rd_req,
    output [31:0] d_rd_addr,
    (*mark_debug = "true"*) input d_rd_rdy,
    input d_wr_valid,
    input d_ret_valid,
    input [127:0] d_ret_data,
    // output d_wr_strb,
    output d_wr_req,
    (*mark_debug = "true"*) input d_wr_rdy,
    output [31:0] d_wr_addr,
    output [127:0] d_wr_data,

    output ud_rd_req,
    output [31:0] ud_rd_addr,
    input ud_rd_rdy,
    input ud_ret_valid,
    input ud_wr_valid,
    input [31:0] ud_ret_data,
    output [3:0] ud_wr_strb,
    output ud_wr_req,
    input ud_wr_rdy,
    output [31:0] ud_wr_addr,
    output [31:0] ud_wr_data
);
parameter   IDLE = 4'd0,
            LOOKUP = 4'd1,
            MISS_and_DIRTY = 4'd2,
            WRITE_BACK = 4'd8,
            MISS_and_CLEAN = 4'd3,
            REFILL = 4'd4,
            UNCACHE_LOAD = 4'd5,
            UNCACHE_STORE = 4'd6,
            UNCACHE_RETURN = 4'd7;

(*mark_debug = "true"*) reg [3:0] dcache_c_state;
(*mark_debug = "true"*) reg [3:0] dcache_n_state;

reg data_ok_timely;

wire [ 1:0] d_hit_way;
wire        d_hit;

wire [19:0] d_way0_tag;
wire [19:0] d_way1_tag;

wire [31:0] RAddr;
reg  [ 1:0] d_count;

reg [31:0] uncache_data;
reg [31:0] cache_data;

(*mark_debug = "true"*) wire        d_chose_dirty;
reg [255:0] d_way0_dirty;
reg [255:0] d_way1_dirty;

reg d_isAgain;

reg[3:0] d_wr0_en;
reg[3:0] d_wr1_en;

wire [127:0] d_way0_block;
wire [127:0] d_way1_block;

//ADD???
wire isUncache;
wire d_way0_v;
wire d_way1_v;

wire [69:0] dcache_CPU2Cache_timely;
wire [69:0] dcache_CPU2Cache;
reg [69:0] dcache_CPU2Cache_buffer;

wire load_wait;

// always @(*) begin
//     // if(reset) begin
//     //     dcache_CPU2Cache_timely <= 70'b0;
//     // end
//     begin
//         dcache_CPU2Cache_timely <= {
//                 d_valid,// 69
//                 d_op, // 68  (1 is store;  0 is load)
//                 d_tag,// [67:48]
//                 d_index,//[47:40]
//                 d_offset, // [39:36]
//                 d_wstrb, // [35:32]
//                 d_wdata // [31:0]
//             };
//     end
// end

assign dcache_CPU2Cache_timely = {
                d_valid,// 69
                d_op, // 68  (1 is store;  0 is load)
                d_tag,// [67:48]
                d_index,//[47:40]
                d_offset, // [39:36]
                d_wstrb, // [35:32]
                d_wdata // [31:0]
            };

always @(posedge clk) begin
    if(reset)
        dcache_CPU2Cache_buffer <= 0;
    else if(d_addr_ok)
        dcache_CPU2Cache_buffer <= dcache_CPU2Cache_timely;
end

assign dcache_CPU2Cache = ( (dcache_c_state == IDLE && ~d_isAgain) || dcache_c_state == LOOKUP && ~load_wait) ? dcache_CPU2Cache_timely : dcache_CPU2Cache_buffer;

always @(posedge clk) begin
    if(reset) begin
        dcache_c_state <= IDLE;
    end else begin
        dcache_c_state <= dcache_n_state;
    end    
end

reg[7:0] pre_index;
always @(posedge clk) begin
    if(reset)
        pre_index <= 0;
    else
        pre_index <= dcache_CPU2Cache[47:40];
end

reg block_once;
always @(*) begin
    if(dcache_c_state == LOOKUP  && ( pre_index != dcache_CPU2Cache[47:40]) ) begin
        block_once <= 1;
    end
    else begin
        block_once <= 0;
    end
end


always @(*) begin
        case(dcache_c_state)
            IDLE:
                begin
                    if(d_valid) begin
                        if(isUncache)begin
                            if(dcache_CPU2Cache[68]) dcache_n_state <= UNCACHE_STORE;
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
                        dcache_n_state <= UNCACHE_RETURN;
                    end
                    else begin
                        dcache_n_state <= UNCACHE_STORE;
                    end
                end
            UNCACHE_RETURN:
                begin
                    if(ud_ret_valid | ud_wr_valid)begin
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
                        dcache_n_state <= WRITE_BACK;
                    end
                    else begin
                        dcache_n_state <= MISS_and_DIRTY;
                    end
                end
            WRITE_BACK:
                begin
                    if(d_wr_valid)begin
                        dcache_n_state <= MISS_and_CLEAN;
                    end
                    else begin
                        dcache_n_state <= WRITE_BACK;
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

always @(posedge clk) begin
    if(reset)
        d_isAgain <= 0;
    else if(dcache_c_state == MISS_and_CLEAN & ~dcache_CPU2Cache[68])
        d_isAgain <= 1;
    else if(dcache_c_state == LOOKUP)// LOOKUP?
        d_isAgain <= 0;
end

always @(*) begin
    if(dcache_c_state == MISS_and_CLEAN)
        d_rd_req <= d_rd_rdy;
    else
        d_rd_req <= 0;
end

reg [31:0] rdata;
// assign d_rdata = rdata;
always @(posedge clk) begin
    if(reset)
        d_rdata <= 0;
    else
        d_rdata <= rdata;
end
reg [31:0] rdata_timely;
reg [31:0] rdata_buffer;

always @(*) begin
    if(dcache_c_state == LOOKUP)begin
        if(d_hit)begin
        case(dcache_CPU2Cache[39:38])//offest[3:2]
            2'd0: rdata_timely <= ({ 32{d_hit_way[0]} } & d_way0_block[31:0]) | ({ 32{d_hit_way[1]} } & d_way1_block[31:0]);
            2'd1: rdata_timely <= ({ 32{d_hit_way[0]} } & d_way0_block[63:32]) | ({ 32{d_hit_way[1]} } & d_way1_block[63:32]);
            2'd2: rdata_timely <= ({ 32{d_hit_way[0]} } & d_way0_block[95:64]) | ({ 32{d_hit_way[1]} } & d_way1_block[95:64]);
            2'd3: rdata_timely <= ({ 32{d_hit_way[0]} } & d_way0_block[127:96]) | ({ 32{d_hit_way[1]} } & d_way1_block[127:96]);
            default: rdata_timely <= 0;
        endcase
        end
        else begin
            rdata_timely <= 0;
        end
    end
    else if(dcache_c_state == UNCACHE_RETURN)begin
        rdata_timely <= ud_ret_data;
    end
    else begin
        rdata_timely <= 0;
    end
end

always @(posedge clk) begin
    if(reset)
        rdata_buffer <= 0;
    else if(dcache_c_state == LOOKUP)begin
        if(d_hit)begin
            rdata_buffer <= rdata_timely;
        end
    end
    else if(dcache_c_state == UNCACHE_RETURN)begin
        rdata_buffer <= rdata_timely;
    end
end

always @(*) begin
    if(dcache_c_state == LOOKUP)begin
        if(d_hit)begin
            rdata <= rdata_timely;
        end
        else begin
            rdata <= rdata_buffer;
        end
    end
    else if(dcache_c_state == UNCACHE_RETURN)begin
        rdata <= rdata_timely;
    end
    else begin
        rdata <= rdata_buffer;
    end
end


reg [3:0] pre_state;
always @(posedge clk) begin
    if(reset)
        pre_state <= 0;
    else
        pre_state <= dcache_c_state;
end

assign load_wait = (pre_state == IDLE && dcache_CPU2Cache_buffer[68]);

reg data_ok_r;
always @(posedge clk) begin
    if(reset)
    begin
        data_ok_r <= 0;
    end
    else if(d_addr_ok)
        data_ok_r <= 0;
    else
        data_ok_r <= data_ok_timely;
end

assign d_data_ok = data_ok_timely | ( data_ok_r & ~d_addr_ok);

always @(*) begin
    if(dcache_c_state == IDLE && dcache_CPU2Cache[68])begin
        data_ok_timely <= 1;
    end/////////////////
    else if(dcache_c_state == LOOKUP && load_wait)begin
        data_ok_timely <= 0;
    end
    else if(dcache_c_state == LOOKUP && d_hit)begin
        data_ok_timely <= ~block_once;
    end
    else if(dcache_c_state == LOOKUP && dcache_CPU2Cache[68])begin
        data_ok_timely <= ~block_once;
    end
    else if(dcache_c_state == UNCACHE_RETURN && ud_ret_valid)begin
        data_ok_timely <= 1;
    end
    // else if(dcache_c_state == REFILL && d_ret_valid && ~dcache_CPU2Cache[68])begin//store 在这里不需要返回dataok
    //     data_ok_timely <= 1;
    // end
    //TODO:对于Uncache的store,也需要等到存好之后再放行流水线
    // else if(dcache_c_state == UNCACHE_STORE && ud_wr_rdy)begin 
    //     data_ok_timely <= 1;
    // end
    else begin
        data_ok_timely <= 0;
    end
end



always @(*) begin
    if(dcache_c_state == IDLE && ~d_isAgain)begin
        d_addr_ok <= 1;
    end
    // else if(dcache_c_state == IDLE && dcache_CPU2Cache[68])begin
    //     d_addr_ok <= 0;
    // end
    else if(dcache_c_state == LOOKUP && load_wait )begin ///改到这
        d_addr_ok <= 0;
    end
    else if(dcache_c_state == LOOKUP )begin
        d_addr_ok <= 1;
    end
    else begin
        d_addr_ok <= 0;
    end
end


assign d_wr_req = (dcache_c_state == MISS_and_DIRTY ) ? d_wr_rdy : 0;

assign d_wr_addr = d_count[0] ? { d_way0_tag, dcache_CPU2Cache[47:40],4'b0} 
                                : {d_way1_tag,dcache_CPU2Cache[47:40], 4'b0}; 

assign d_wr_data = { 128{d_count[0] & d_way0_v} } & d_way0_block |
                    { 128{d_count[1] & d_way1_v} } & d_way1_block;

assign ud_rd_req = (dcache_c_state == UNCACHE_LOAD) ? ud_rd_rdy : 0;

assign ud_wr_req = (dcache_c_state == UNCACHE_STORE) ? ud_wr_rdy : 0;

always @(posedge clk) begin
    if (reset)
        uncache_data <= 0;
    else if(ud_ret_valid)
        uncache_data <= ud_ret_data;
end

assign d_rd_addr  = {RAddr[31:4],4'b0};
assign ud_rd_addr = RAddr;

assign ud_wr_strb = dcache_CPU2Cache[35:32];
assign ud_wr_addr = RAddr;
assign ud_wr_data = dcache_CPU2Cache[31:0];

always @(posedge clk)begin
    if(d_hit_way[0]) begin
        d_count[0] <= 1;
        d_count[1] <= 0;
    end else begin
        d_count[0] <= 1;
        d_count[1] <= 0;
    end
end

assign d_hit_way[0] = (d_way0_tag == RAddr[31:12] ) && d_way0_v;
assign d_hit_way[1] = (d_way1_tag == RAddr[31:12] ) && d_way1_v;

assign d_hit = d_hit_way[0] || d_hit_way[1] ;//第一个时钟沿发来请求，下个时钟沿一定准确

assign d_chose_dirty = d_count[0] && d_way0_dirty[ dcache_CPU2Cache[47:40] ] || 
                        d_count[1] && d_way1_dirty[ dcache_CPU2Cache[47:40] ];

always @(posedge clk) begin
    if(reset)begin
        d_way0_dirty <= 256'b0;
        d_way1_dirty <= 256'b0;
    end else if(dcache_c_state == MISS_and_DIRTY)begin
        d_way0_dirty[dcache_CPU2Cache[47:40]] <= 1'b0;
        d_way1_dirty[dcache_CPU2Cache[47:40]] <= 1'b0;
    end
    else if(dcache_c_state == REFILL && dcache_CPU2Cache[68]) begin
        d_way0_dirty[dcache_CPU2Cache[47:40]] <= dcache_CPU2Cache[68] && d_count[0];
        d_way1_dirty[dcache_CPU2Cache[47:40]] <= dcache_CPU2Cache[68] && d_count[1];
    end
end

always @(*) begin
    if(dcache_c_state == LOOKUP && d_hit && dcache_CPU2Cache[68]) begin
        case (dcache_CPU2Cache[39:38])
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


reg [127:0] d_ram_write_data;
reg [127:0] ram_write_date_timely;
reg [127:0] ram_write_date_buffer;

always @(*) begin
    if( (dcache_c_state == LOOKUP && d_hit) || dcache_c_state == REFILL && d_ret_valid)begin
        if(dcache_CPU2Cache[68]) begin //TODO:逻辑可以优化,这里显得比较复杂
            case (dcache_CPU2Cache[35:32]) //wstrb
                4'b0001:begin
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {original_data[31:8],dcache_CPU2Cache[7:0] } : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {original_data[63:40],dcache_CPU2Cache[7:0] } : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {original_data[95:72],dcache_CPU2Cache[7:0] } : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {original_data[127:104],dcache_CPU2Cache[7:0] } : original_data[127:96];
                end
                4'b0010:begin
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {original_data[31:16],dcache_CPU2Cache[15:8], original_data[7:0]} : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {original_data[63:48],dcache_CPU2Cache[15:8], original_data[39:32]} : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {original_data[95:80],dcache_CPU2Cache[15:8], original_data[71:64]} : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {original_data[127:112],dcache_CPU2Cache[15:8], original_data[103:96]} : original_data[127:96];
                end
                4'b0100:begin
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {original_data[31:24],dcache_CPU2Cache[23:16], original_data[15:0]} : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {original_data[63:56],dcache_CPU2Cache[23:16], original_data[47:32]} : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {original_data[95:88],dcache_CPU2Cache[23:16], original_data[79:64]} : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {original_data[127:120],dcache_CPU2Cache[23:16], original_data[111:96]} : original_data[127:96];
                end
                4'b1000:begin
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {dcache_CPU2Cache[31:24],original_data[23:0]} : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {dcache_CPU2Cache[31:24],original_data[55:32]} : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {dcache_CPU2Cache[31:24],original_data[87:64]} : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {dcache_CPU2Cache[31:24],original_data[119:96]} : original_data[127:96];
                end
                4'b0011:begin
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {original_data[31:16],dcache_CPU2Cache[15:0]} : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {original_data[63:48],dcache_CPU2Cache[15:0]} : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {original_data[95:80],dcache_CPU2Cache[15:0]} : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {original_data[127:112],dcache_CPU2Cache[15:0]} : original_data[127:96];
                end
                4'b1100:begin
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {dcache_CPU2Cache[31:16],original_data[15:0]} : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {dcache_CPU2Cache[31:16],original_data[47:32]} : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {dcache_CPU2Cache[31:16],original_data[79:64]} : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {dcache_CPU2Cache[31:16],original_data[111:96]} : original_data[127:96];
                end
                4'b0111: begin 
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {original_data[31:24],dcache_CPU2Cache[23:0]} : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {original_data[63:56],dcache_CPU2Cache[23:0]} : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {original_data[95:88],dcache_CPU2Cache[23:0]} : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {original_data[127:120],dcache_CPU2Cache[23:0]} : original_data[127:96];
                end
                4'b1110: begin
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? {dcache_CPU2Cache[31:8],original_data[7:0]} : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? {dcache_CPU2Cache[31:8],original_data[39:32]} : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? {dcache_CPU2Cache[31:8],original_data[71:64]} : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? {dcache_CPU2Cache[31:8],original_data[103:96]} : original_data[127:96];
                end
                4'b1111: begin //dcache_CPU2Cache[39:38] 关注offset高两位
                    ram_write_date_timely[31:0] <= dcache_CPU2Cache[39:38] == 2'b00 ? dcache_CPU2Cache[31:0] : original_data[31:0];
                    ram_write_date_timely[63:32] <= dcache_CPU2Cache[39:38] == 2'b01 ? dcache_CPU2Cache[31:0] : original_data[63:32];
                    ram_write_date_timely[95:64] <= dcache_CPU2Cache[39:38] == 2'b10 ? dcache_CPU2Cache[31:0] : original_data[95:64];
                    ram_write_date_timely[127:96] <= dcache_CPU2Cache[39:38] == 2'b11 ? dcache_CPU2Cache[31:0] : original_data[127:96];
                end
                default:begin
                    ram_write_date_timely <= original_data;
                end
            endcase
            
        end else begin
            if(d_ret_valid)
                ram_write_date_timely <=  d_ret_data ;
            else
                ram_write_date_timely <= 0;
        end
    end
    else begin
        ram_write_date_timely <= 0;
    end
end

always @(posedge clk) begin
    if(reset)
        ram_write_date_buffer <= 0;
    else if( (dcache_c_state == LOOKUP && d_hit) || dcache_c_state == REFILL && d_ret_valid)begin
        if(dcache_CPU2Cache[68]) begin //TODO:逻辑可以优化,这里显得比较复杂
            ram_write_date_buffer <= ram_write_date_timely;
        end else begin
            if(d_ret_valid)
                ram_write_date_buffer <=  ram_write_date_timely ;
        end
    end
end

always @(*) begin
    if( (dcache_c_state == LOOKUP && d_hit) || dcache_c_state == REFILL && d_ret_valid)begin
        if(dcache_CPU2Cache[68]) begin //TODO:逻辑可以优化,这里显得比较复杂
            d_ram_write_data <= ram_write_date_timely;
        end else begin
            if(d_ret_valid)
                d_ram_write_data <=  ram_write_date_timely ;
            else
                d_ram_write_data <= ram_write_date_buffer;
        end
    end
    else begin
        d_ram_write_data <= ram_write_date_buffer;
    end
end

V2RConvert U_DCache_V2RConvert(
    .VAddr(dcache_CPU2Cache[67:36]),
    .RAddr(RAddr),
    .isUncache(isUncache)
);

ram_tag dcache_way0_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr0_en[0] || d_wr0_en[1] || d_wr0_en[2] || d_wr0_en[3]),
    .addra(dcache_CPU2Cache[47:40]),//index
    .dina({RAddr[31:12],1'b1 } ),
    .douta({d_way0_tag,d_way0_v})
);

ram_tag dcache_way1_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(d_wr1_en[0] || d_wr1_en[1] || d_wr1_en[2] || d_wr1_en[3]),
    .addra(dcache_CPU2Cache[47:40]),//index
    .dina({RAddr[31:12],1'b1 }),
    .douta({d_way1_tag,d_way1_v})
);

// reg [7:0] blank_wr_addr;
// always @(posedge clk) begin
//     blank_wr_addr <= dcache_CPU2Cache[47:40];
// end

// reg blank_wr;
// always @(posedge clk) begin
//     blank_wr <= d_wr0_en[0] || d_wr0_en[1] || d_wr0_en[2] || d_wr0_en[3] || d_wr1_en[0] || d_wr1_en[1] || d_wr1_en[2] || d_wr1_en[3];
// end

wire [7:0] blank_addr;
assign blank_addr = dcache_CPU2Cache[47:40];

// assign blank_addr = blank_wr ? blank_wr_addr : dcache_CPU2Cache[47:40];

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
