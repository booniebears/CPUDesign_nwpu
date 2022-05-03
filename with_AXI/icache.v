module icache(
    //��CPU��ˮ�ߵĽ����ӿ�
    input clk,
    input reset,
    input valid,
    input op,///TODO can delete
    input [7:0] index,
    input [19:0] tag,
    input [3:0] offset,
    input [31:0] wdata,
    output addr_ok,
    output reg data_ok,
    output reg [31:0] rdata,

    //��AXI���߽ӿڵĽ����ӿ�
    output reg rd_req,
    output [31:0] rd_addr,
    input rd_rdy,
    input ret_valid,
    input [127:0] ret_data

);

parameter   IDLE = 3'd0,
            LOOKUP = 3'd1,
            MISS = 3'd2,
            REFILL = 3'd4;

// ��·��cache line
wire [127:0] way0_block;
wire [127:0] way1_block;

// ��һ·hit
wire [1:0] hit_way;

// ����hit���
wire hit;

// ������Ҫ�����ڴ����CPU����cache��Ҫ����CPU������
reg [31:0] CPU_Cache_buffer;

// ѡ���滻��һ·
reg [1:0] count;
always @(posedge clk)begin
    if(hit_way[0]) begin
        count[0] = 1;
        count[1] = 0;
    end else begin
        count[0] = 1;
        count[1] = 0;
    end
end


reg [2:0] c_state;
reg [2:0] n_state;

always @(posedge clk) begin
    if(reset) begin
        c_state <= IDLE;
    end else begin
        c_state <= n_state;
    end    
end

reg isAgain;

always @(*) begin
    if(reset) begin
        n_state <= IDLE;
    end else begin
            case (c_state)
                IDLE: begin
                    if(valid || isAgain) //���CPU�������� 
                        n_state <= LOOKUP;
                    else
                        n_state <= IDLE;
                end
                LOOKUP: begin
                    if(hit && valid) //������в���CPU��������
                        n_state <= LOOKUP;
                    else if(hit && !valid) //������е���CPUû��������
                        n_state <= IDLE;
                    else
                        n_state <= MISS;
                end
                MISS: begin
                    if(rd_rdy)//AXI���߿��Խ��ܶ�����
                        n_state <= REFILL;
                    else
                        n_state <= MISS;
                end
                REFILL: begin
                    if(ret_valid)//AXI���߷��ض����� ���� Ҫд
                        n_state <= IDLE;
                    else
                        n_state <= REFILL;
                end
                default: 
                    n_state <= IDLE;
            endcase
    
    end
end

// reg isAgain; �Ƿ�AXIд��cache���ٽ���һ�η���
always @(posedge clk) begin
    if(c_state == MISS)
        isAgain <= 1;
    else if(c_state == IDLE)
        isAgain <= 0;
end

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
always @(posedge clk) begin
    if(reset) CPU_Cache_buffer <= 32'b0;
    else if(c_state == IDLE && valid || c_state == LOOKUP) begin
        CPU_Cache_buffer <= {
                                tag,    // [31:12]
                                index,  // [11:4]
                                offset // [3:0]
        };
    end 
end

// ͨ��index���������� ��·tag ���ж���һ·����
wire [19:0] way0_tag;
wire [19:0] way1_tag;

// ��һ·�������Ƿ���Ч ��cache line �Ƿ�д����
wire way0_v;
wire way1_v;

assign hit_way[0] = (way0_tag == tag) && way0_v;
assign hit_way[1] = (way1_tag == tag) && way1_v;

assign hit = (index == CPU_Cache_buffer[11:4])? hit_way[0] || hit_way[1] : 1'b0;


assign rd_addr = {CPU_Cache_buffer[31:4],4'b0};


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


reg[3:0] wr0_en;
reg[3:0] wr1_en;
always @(posedge clk) begin
    if(c_state == REFILL && ret_valid) begin
        wr0_en = { 4{count[0]} };
        wr1_en = { 4{count[1]} };
    end else begin
        wr0_en = 0;
        wr1_en = 0;
    end
        
end

always @(*) begin
    if(c_state == LOOKUP) begin
         case (CPU_Cache_buffer[3:2])//offest[3:2]
            2'd0: rdata <= ({ 32{hit_way[0]} } & way0_block[31:0]) | ({ 32{hit_way[1]} } & way1_block[31:0]);
            2'd1: rdata <= ({ 32{hit_way[0]} } & way0_block[63:32]) | ({ 32{hit_way[1]} } & way1_block[63:32]);
            2'd2: rdata <= ({ 32{hit_way[0]} } & way0_block[95:64]) | ({ 32{hit_way[1]} } & way1_block[95:64]);
            2'd3: rdata <= ({ 32{hit_way[0]} } & way0_block[127:96]) | ({ 32{hit_way[1]} } & way1_block[127:96]);
            default: rdata <= 0;
        endcase
    end
    else begin
        rdata <= rdata;
    end
    
end

wire [7:0] ram_tag_addr;///CHANGE
assign ram_tag_addr =CPU_Cache_buffer[11:4];
ram_tag icache_way0_tagv(
    .clka(clk),
    .ena(1'b1),///CHANGE problem?
    .wea(wr0_en[0] || wr0_en[1] || wr0_en[2] || wr0_en[3]),
    .addra(index),
    .dina({CPU_Cache_buffer[31:12],1'b1 }),
    .douta({way0_tag,way0_v})
);

ram_tag icache_way1_tagv(
    .clka(clk),
    .ena(1'b1),
    .wea(wr1_en[0] || wr1_en[1] || wr1_en[2] || wr1_en[3]),
    .addra(index),
    .dina({CPU_Cache_buffer[31:12],1'b1 }),
    .douta({way1_tag,way1_v})
);


ram_bank icache_way0_bank0(
    .clka(clk),
    .ena(1'b1),
    .wea(wr0_en[0]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[31:0]),
    .douta(way0_block[31:0])
);
ram_bank icache_way0_bank1(
    .clka(clk),
    .ena(1'b1),
    .wea(wr0_en[1]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[63:32]),
    .douta(way0_block[63:32])
);
ram_bank icache_way0_bank2(
    .clka(clk),
    .ena(1'b1),
    .wea(wr0_en[2]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[95:64]),
    .douta(way0_block[95:64])
);
ram_bank icache_way0_bank3(
    .clka(clk),
    .ena(1'b1),
    .wea(wr0_en[3]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[127:96]),
    .douta(way0_block[127:96])
);

ram_bank icache_way1_bank0(
    .clka(clk),
    .ena(1'b1),
    .wea(wr1_en[0]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[31:0]),
    .douta(way1_block[31:0])
);
ram_bank icache_way1_bank1(
    .clka(clk),
    .ena(1'b1),
    .wea(wr1_en[1]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[63:32]),
    .douta(way1_block[63:32])
);
ram_bank icache_way1_bank2(
    .clka(clk),
    .ena(1'b1),
    .wea(wr1_en[2]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[95:64]),
    .douta(way1_block[95:64])
);
ram_bank icache_way1_bank3(
    .clka(clk),
    .ena(1'b1),
    .wea(wr1_en[3]),
    .addra(CPU_Cache_buffer[11:4]),
    .dina(ram_write_data[127:96]),
    .douta(way1_block[127:96])
);

endmodule
