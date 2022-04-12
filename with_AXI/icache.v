parameter   IDLE = 3'd0,
            LOOKUP = 3'd1;,
            MISS = 3'd2,
            REPLACE = 3'd3,
            REFILL = 3'd4;

// parameter   W_IDLE = 0,
//             W_WRITE = 1;


//��ֱ��д��dcache��icache��dcache�Ļ����Ͻ�д�������μ���
//��û���ü����ԣ���Ϊû�а���CPU���ʵս��д����ʱ��û����ѧ����ε��ԣ����ܻ��е�С���⣩��
//�˿��źź���CPU���ʵս�����˸Ķ�����AXI��ͨ��ʹ����һ����128λ�����ɴ�ɾ����һЩ����Ҫ�źš�


module dcache (
    
    //��CPU��ˮ�ߵĽ����ӿ�
    input clk,
    input resetn,
    input valid;
    input op; //icache ����
    input [7:0] index;
    input [19:0] tag;//tag �� v ����ram���棬d ʹ��regfile�洢
    input [3:0] offset;
    input [31:0] wdata; //icache ����
    output addr_ok;
    output data_ok;
    output [31:0] rdata;

    //��AXI���߽ӿڵĽ����ӿ�
    output rd_req;
    output [31:0] rd_addr;
    input rd_rdy;
    input ret_valid;
    input [127:0] ret_data;
    // output wr_req;
    // output [31:0] wr_addr;
    // output [127:0] wr_data;
    // input wr_rady;
)

wire [127:0] way0_block;
wire [127:0] way1_block;

// wire chose_dirty;


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

always @(posedge clk, posedge resetn) begin
    if(resetn) begin
        c_state <= IDLE;
    end else begin
        c_state <= n_state;
    end    
end

always @(posedge clk, posedge resetn) begin
    if(resetn) begin
        n_state <= IDLE;
    end else begin
        case (c_state)
            IDLE: begin
                if(valid) //���CPU��������(������Hit Write��ͻ��δ����)
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
            //     if(wr_rady || !chose_dirty)//�������д��,������AXI�Ǳ�û����д��˵�����԰���ҳд��������ѡ���滻�Ĳ�����ҳ
            //         n_state <= REPLACE;
            //     else
            //         n_state <= MISS;
            // end
            // REPLACE: begin
                if(rd_rdy)//AXI���߿��Խ��ܶ�����
                    n_state <= REFILL;
                else
                    // n_state <= REPLACE;
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

//cache�Ƿ��ܹ����յ�ַ
always @(posedge clk) begin
    if(c_state == IDLE)
        addr_ok <= valid;
    else
        addr_ok <= 0;
end

always @(posedge clk) begin
    if(c_state == LOOKUP && hit)
        data_ok <= 1;
    else if(c_state == REFILL)
        data_ok <= 1;
    else
        data_ok <= 0;
end


always @(posedge clk) begin
    if(c_state == IDLE && valid || c_state == LOOKUP && hit && valid) 
    CPU_Cache_buffer <= {
        valid,// 69
        op, // 68 //icache ����
        tag,// [67:48]
        index,//[47:40]
        offset, // [39:36]
        wstrb, // [35:32]
        wdata, // [31:0] //icache ����
    };
end

wire [19:0] way0_tag;
wire [19:0] way1_tag;

wire way0_v;
wire way1_v;

assign hit_way[0] = (way0_tag == tag) && way0_v;
assign hit_way[1] = (way1_tag == tag) && way1_v;



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
        wr0_en = 4{count[0]};
        wr1_en = 4{count[1]};
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
            2'd0: rdata = (32{hit_way[0]} && way0_block[31:0]) || (32{hit_way[1]} && way1_block[31:0]);
            2'd1: rdata = (32{hit_way[0]} && way0_block[63:32]) || (32{hit_way[1]} && way1_block[63:32]);
            2'd2: rdata = (32{hit_way[0]} && way0_block[95:64]) || (32{hit_way[1]} && way1_block[95:64]);
            2'd3: rdata = (32{hit_way[0]} && way0_block[127:96]) || (32{hit_way[1]} && way1_block[127:96]);
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
        2'd0: rdata = (32{hit_way[0]} && way0_block[31:0]) || (32{hit_way[1]} && way1_block[31:0]);
        2'd1: rdata = (32{hit_way[0]} && way0_block[63:32]) || (32{hit_way[1]} && way1_block[63:32]);
        2'd2: rdata = (32{hit_way[0]} && way0_block[95:64]) || (32{hit_way[1]} && way1_block[95:64]);
        2'd3: rdata = (32{hit_way[0]} && way0_block[127:96]) || (32{hit_way[1]} && way1_block[127:96]);
        default: rdata = 0;
    endcase
end


wire [7:0] ram_addr;
assign ram_tag_addr =CPU_Cache_buffer[47:40];
ram_tag way0_tagv{
    .clk(clk),
    .ram_wen(wr0_en[0] || wr0_en[1] || wr0_en[2] || wr0_en[3]),
    .ram_addr(ram_tag_addr),
    .ram_wdata({CPU_Cache_buffer[67:48],1'b1 }),
    ,ram_rdata({way0_tag,way0_v})
};

ram_tag way1_tagv{
    .clk(clk),
    .ram_wen(wr1_en[0] || wr1_en[1] || wr1_en[2] || wr1_en[3]),
    .ram_addr(ram_tag_addr),
    .ram_wdata({CPU_Cache_buffer[67:48],1'b1 }),
    ,ram_rdata({way1_tag,way1_v})
};


ram_bank way0_bank0{
    .clk(clk),
    .ram_wen(wr0_en[0]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[31:0]),
    .ram_rdata(way0_block[31:0])
}
ram_bank way0_bank1{
    .clk(clk),
    .ram_wen(wr0_en[1]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[63:32]),
    .ram_rdata(way0_block[63:32])
}
ram_bank way0_bank2{
    .clk(clk),
    .ram_wen(wr0_en[2]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[95:64]),
    .ram_rdata(way0_block[95:64])
}
ram_bank way0_bank3{
    .clk(clk),
    .ram_wen(wr0_en[3]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[127:96]),
    .ram_rdata(way0_block[127:96])
}

ram_bank way1_bank0{
    .clk(clk),
    .ram_wen(wr1_en[0]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[31:0]),
    .ram_rdata(way1_block[31:0])
}
ram_bank way1_bank1{
    .clk(clk),
    .ram_wen(wr1_en[1]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[63:32]),
    .ram_rdata(way1_block[63:32])
}
ram_bank way1_bank2{
    .clk(clk),
    .ram_wen(wr1_en[2]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[95:64]),
    .ram_rdata(way1_block[95:64])
}
ram_bank way1_bank3{
    .clk(clk),
    .ram_wen(wr1_en[3]),
    .ram_addr(CPU_Cache_buffer[47:40]),
    .ram_wdata(ram_write_data[127:96]),
    .ram_rdata(way1_block[127:96])
}


endmodule