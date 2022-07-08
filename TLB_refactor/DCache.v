module DCache #(
    parameter  DATA_WIDTH      = 32, 
    parameter  CACHELINE_WIDTH = 128, 
    parameter  ASSOC_NUM       = 2, //��������
    parameter  WORDS_PER_LINE  = 4, //һ��4��
    parameter  WAY_SIZE        = 4*1024*8, //һ·Cache ������С
    parameter  BLOCK_NUMS      = WAY_SIZE/(WORDS_PER_LINE*DATA_WIDTH), //һ·Cache����=256
    localparam BYTES_PER_WORD  = 4,
    localparam INDEX_WIDTH     = $clog2(BLOCK_NUMS), //8
    localparam OFFSET_WIDTH    = $clog2(WORDS_PER_LINE*BYTES_PER_WORD),//4
    localparam TAG_WIDTH       = 32-INDEX_WIDTH-OFFSET_WIDTH, //20
    localparam WSTRB_WIDTH     = 4,
    localparam DIRTY_WIDTH     = 1
)
(
    //��CPU��ˮ�ߵĽ����ӿ�
    input                        clk,
    input                        reset,
    input                        data_valid,
    input                        data_op,
    input [INDEX_WIDTH-1:0]      data_index,
    input [TAG_WIDTH-1:0]        data_tag,
    input [OFFSET_WIDTH-1:0]     data_offset,
    input [DATA_WIDTH-1:0]       data_wdata,
    input [WSTRB_WIDTH-1:0]      data_wstrb, //�ֽ�дʹ��wstrb
    output [DATA_WIDTH-1:0]      data_rdata,
    output                       busy,

    //��AXI���߽ӿڵĽ����ӿ�
    output                       dcache_rd_req,
    output [DATA_WIDTH-1:0]      dcache_rd_addr,
    input                        dcache_rd_rdy,
    input                        dcache_wr_valid,
    input                        dcache_ret_valid,
    input [CACHELINE_WIDTH-1:0]  dcache_ret_data,
    output                       dcache_wr_req,
    input                        dcache_wr_rdy,
    output [DATA_WIDTH-1:0]      dcache_wr_addr,
    output [CACHELINE_WIDTH-1:0] dcache_wr_data,

    output                       udcache_rd_req,
    output [31:0]                udcache_rd_addr,
    input                        udcache_rd_rdy,
    input                        udcache_ret_valid,
    input                        udcache_wr_valid,
    input [DATA_WIDTH-1:0]       udcache_ret_data,
    output [WSTRB_WIDTH-1:0]     udcache_wr_strb,
    output                       udcache_wr_req,
    input                        udcache_wr_rdy,
    output [31:0]                udcache_wr_addr,
    output [DATA_WIDTH-1:0]      udcache_wr_data,
    input                        isUncache //
);

//define Cache FSM 
parameter  LOOKUP         = 3'd0,
           MISSDIRTY      = 3'd1,
           WRITEBACK      = 3'd2,
           MISSCLEAN      = 3'd3,
           REFILL         = 3'd4,
           REFILLDONE     = 3'd5;

//define Uncache FSM 
parameter  UNCACHE_LOOKUP = 3'd0,
           UNCACHE_LOAD   = 3'd1,
           UNCACHE_STORE  = 3'd2,
           UNCACHE_RETURN = 3'd3,
           UNCACHE_DONE   = 3'd4;

//define Cache Write FSM
parameter  WRITE_IDLE     = 1'd0,
           WRITE_START    = 1'd1;

reg [2:0] dcache_state;
reg [2:0] dcache_nextstate;
reg [2:0] uncache_state;
reg [2:0] uncache_nextstate;
reg       write_state;
reg       write_nextstate;

/****************define req_buffer***************/
wire                   reqbuffer_en;
wire                   reqbuffer_flush;
reg                    reqbuffer_data_valid;
reg                    reqbuffer_data_op;
reg [INDEX_WIDTH-1:0]  reqbuffer_data_index;
reg [TAG_WIDTH-1:0]    reqbuffer_data_tag;
reg [OFFSET_WIDTH-1:0] reqbuffer_data_offset;
reg [DATA_WIDTH-1:0]   reqbuffer_data_wdata;
reg [WSTRB_WIDTH-1:0]  reqbuffer_data_wstrb;
reg                    reqbuffer_data_isUncache;
/****************define req_buffer***************/

/****************define write_buffer***************/
wire                   writebuffer_en;
reg [INDEX_WIDTH-1:0]  writebuffer_data_index;
reg [ASSOC_NUM-1:0]    writebuffer_data_hit; //TODO:����Ƭѡһ·
reg [TAG_WIDTH-1:0]    writebuffer_data_tag;
reg [OFFSET_WIDTH-1:0] writebuffer_data_offset;
reg [DATA_WIDTH-1:0]   writebuffer_data_wdata;
/****************define write_buffer***************/

wire [ASSOC_NUM-1:0]     hit;
wire                     cache_hit;
reg  [ASSOC_NUM-1:0]     delayed_hit; //hit��ʱ
reg                      delayed_cache_hit; //cache_hit��ʱ
wire                     delayed_hit_wr;
wire                     data_read_en;

reg  [ASSOC_NUM-1:0]     dirty_we; 
reg  [ASSOC_NUM-1:0]     tagv_we ;   
reg [WORDS_PER_LINE-1:0] data_we[ASSOC_NUM-1:0]; //��ȷ����

wire [INDEX_WIDTH-1:0]   dirty_index;
wire [INDEX_WIDTH-1:0]   tagv_index;
wire [INDEX_WIDTH-1:0]   write_index;
wire [INDEX_WIDTH-1:0]   read_index;
  
wire [TAG_WIDTH:0]       tagv_wdata; //{tag,1'b1} valid bit�����λ
wire                     dirty_wbit; //д��lutram����λ
  
wire [ASSOC_NUM-1:0]     dirty_rbit; //����lutram����λ
wire [TAG_WIDTH-1:0]     tag_rdata[ASSOC_NUM-1:0]; //λ��TAG_WIDTH,��ASSOC_NUM·
wire                     valid_rdata[ASSOC_NUM-1:0]; //λ��1,��ASSOC_NUM·
wire [DATA_WIDTH-1:0]    dcache_wdata[WORDS_PER_LINE-1:0]; //дICache��ָ������
wire [DATA_WIDTH-1:0]    dcache_rdata[ASSOC_NUM-1:0][WORDS_PER_LINE-1:0]; //дICache��ָ������
wire [DATA_WIDTH-1:0]    dcache_rdata_sel[ASSOC_NUM-1:0];
wire [DATA_WIDTH-1:0]    dcache_write_data;
reg  [DATA_WIDTH-1:0]    uncache_rdata;
reg  [TAG_WIDTH-1:0]     delayed_tag_rdata[ASSOC_NUM-1:0]; //tag_rdataһ����ʱ

wire [$clog2(ASSOC_NUM)-1:0] sel_way;   
wire [$clog2(ASSOC_NUM)-1:0] plru [BLOCK_NUMS-1:0];
reg                          plru_en;

wire                     uncache_busy;
wire                     dcache_busy;
wire                     write_busy;

//��CPU��ˮ�ߵĽ����ӿ�
generate
    genvar n;
    for (n = 0; n < ASSOC_NUM; n = n + 1) begin
        assign dcache_rdata_sel[n] = dcache_rdata[n][reqbuffer_data_offset[OFFSET_WIDTH-1:2]];
    end
endgenerate
//TODO:֮��ĳ���·������
assign sel_way      = delayed_hit[0] ? 1'b0 : 1'b1;
assign data_rdata   = (uncache_state == UNCACHE_DONE) ? uncache_rdata : dcache_rdata_sel[sel_way];
assign uncache_busy = (uncache_state == UNCACHE_DONE | uncache_state == UNCACHE_LOOKUP) ? 1'b0 : 1'b1;
assign dcache_busy  = reqbuffer_data_valid & ~reqbuffer_data_isUncache & 
                      (~delayed_cache_hit | (delayed_cache_hit & reqbuffer_data_op));
                    //sw����hit,Ҫ������MEM
assign busy         = uncache_busy | dcache_busy;

//TODO:֮��ĳ���·������
assign dcache_write_data[7:0]   = reqbuffer_data_wstrb[0] ? reqbuffer_data_wdata[7:0] :
                                                            dcache_rdata_sel[sel_way][7:0];
assign dcache_write_data[15:8]  = reqbuffer_data_wstrb[1] ? reqbuffer_data_wdata[15:8] :
                                                            dcache_rdata_sel[sel_way][15:8];
assign dcache_write_data[23:16] = reqbuffer_data_wstrb[2] ? reqbuffer_data_wdata[23:16] :
                                                            dcache_rdata_sel[sel_way][23:16];
assign dcache_write_data[31:24] = reqbuffer_data_wstrb[3] ? reqbuffer_data_wdata[31:24] :
                                                            dcache_rdata_sel[sel_way][31:24]; 

//��AXI�Ľ����ӿ�
//dcache AXI
assign dcache_rd_req   = (dcache_state == MISSCLEAN);
assign dcache_rd_addr  = {reqbuffer_data_tag,reqbuffer_data_index,{OFFSET_WIDTH{1'b0}}};
assign dcache_wr_req   = (dcache_state == MISSDIRTY);
//TODO:���Ƕ�·���������
assign dcache_wr_addr  = {delayed_tag_rdata[plru[reqbuffer_data_index]],reqbuffer_data_index,
                         {OFFSET_WIDTH{1'b0}}}; 
generate //TODO:���Ƕ�·���������
    genvar u;
    for (u = 0; u < WORDS_PER_LINE; u = u + 1) begin
        assign dcache_wr_data[32*(u+1)-1:32*(u)] = dcache_rdata[plru[reqbuffer_data_index]][u];
    end
endgenerate

//uncache AXI
assign udcache_rd_req  = (uncache_state == UNCACHE_LOAD);
assign udcache_rd_addr = {reqbuffer_data_tag,reqbuffer_data_index,reqbuffer_data_offset};
assign udcache_wr_strb = reqbuffer_data_wstrb;
assign udcache_wr_req  = (uncache_state == UNCACHE_STORE);
assign udcache_wr_addr = {reqbuffer_data_tag,reqbuffer_data_index,reqbuffer_data_offset};
assign udcache_wr_data = reqbuffer_data_wdata;

generate
    genvar t;
    for (t = 0; t < ASSOC_NUM; t = t + 1) begin
        always @(posedge clk) begin //���ڷ���AXI write��ַ
            if(reset)
                delayed_tag_rdata[t] <= 0;
            else if(delayed_hit_wr)
                delayed_tag_rdata[t] <= tag_rdata[t];
        end
    end
endgenerate

//hit�ж��߼�
generate
    genvar k;
    for (k = 0; k < ASSOC_NUM; k = k + 1) begin
        assign hit[k] = data_valid ? (valid_rdata[k] & (tag_rdata[k] == data_tag) & ~isUncache) :
                                     (valid_rdata[k] & (tag_rdata[k] == reqbuffer_data_tag) 
                                                                    & ~reqbuffer_data_isUncache);
    end
endgenerate
assign cache_hit  = |hit;
assign delayed_hit_wr = (dcache_state == REFILLDONE) ? 1'b1 : data_valid;
always @(posedge clk) begin
    if(reset) begin
        delayed_cache_hit <= 1'b0;
        delayed_hit       <= 0;
    end
    else if(delayed_hit_wr) begin
        delayed_cache_hit <= cache_hit;
        delayed_hit       <= hit;
    end
end


always @(posedge clk) begin
    if(reset)
        uncache_rdata <= 0;
    else if(udcache_ret_valid)
        uncache_rdata <= udcache_ret_data;
end

assign writebuffer_en = delayed_cache_hit & reqbuffer_data_op;                                                 
always @(posedge clk) begin //writebuffer
    if(reset) begin
        writebuffer_data_index  <= 0;
        writebuffer_data_hit    <= 0; 
        writebuffer_data_tag    <= 0;
        writebuffer_data_offset <= 0;
        writebuffer_data_wdata  <= 0;
    end
    else if(writebuffer_en)begin
        writebuffer_data_index  <= reqbuffer_data_index;
        writebuffer_data_hit    <= delayed_hit; 
        writebuffer_data_tag    <= reqbuffer_data_tag;
        writebuffer_data_offset <= reqbuffer_data_offset;
        writebuffer_data_wdata  <= dcache_write_data ;
    end
end

assign reqbuffer_en    = data_valid;
assign reqbuffer_flush = reqbuffer_data_op & reqbuffer_data_valid & delayed_cache_hit;
always @(posedge clk) begin //reqbuffer
    if(reset | reqbuffer_flush) begin
        reqbuffer_data_valid     <= 0;
        reqbuffer_data_op        <= 0;
        reqbuffer_data_index     <= 0;
        reqbuffer_data_tag       <= 0;
        reqbuffer_data_offset    <= 0;
        reqbuffer_data_wdata     <= 0;
        reqbuffer_data_wstrb     <= 0;
        reqbuffer_data_isUncache <= 0;
    end
    else if(reqbuffer_en) begin
        reqbuffer_data_valid     <= data_valid ;
        reqbuffer_data_op        <= data_op    ;
        reqbuffer_data_index     <= data_index ;
        reqbuffer_data_tag       <= data_tag   ;
        reqbuffer_data_offset    <= data_offset;
        reqbuffer_data_wdata     <= data_wdata ;
        reqbuffer_data_wstrb     <= data_wstrb ; //�ֽ�дʹ��wstrb
        reqbuffer_data_isUncache <= isUncache  ;
    end
end

//dirty lutram
always @(*) begin
    dirty_we = 0;
    if(dcache_state == REFILL & dcache_ret_valid) begin
        dirty_we[plru[reqbuffer_data_index]]   = 1'b1;
    end
    else if(write_state == WRITE_START)
        dirty_we    = delayed_hit;
    else
        dirty_we    = 0;
end
assign dirty_index = (write_state == WRITE_START) ? writebuffer_data_index : reqbuffer_data_index;
assign dirty_wbit  = (dcache_state == REFILL) ? 1'b0 : 1'b1;

//tagv lutram
always @(*) begin
    tagv_we = 0;
    if(dcache_state == REFILL & dcache_ret_valid)
        tagv_we[plru[reqbuffer_data_index]] = 1'b1; 
    else
        tagv_we = 0;
end

assign tagv_index = (dcache_state == REFILL || dcache_state == REFILLDONE) 
                    ? reqbuffer_data_index : data_index;
assign tagv_wdata = {reqbuffer_data_tag,1'b1};

//data ram
always @(*) begin //TODO:֮���޸�Ϊ��·������
    data_we[0] = 0; //������always���߼���,�����Ϊ0
    data_we[1] = 0; //������always���߼���,�����Ϊ0
    if(dcache_state == REFILL & dcache_ret_valid)
        data_we[plru[reqbuffer_data_index]] = {WORDS_PER_LINE{1'b1}};
    else if(write_state == WRITE_START) begin
        data_we[sel_way][writebuffer_data_offset[OFFSET_WIDTH-1:2]] = 1'b1;
    end
    else begin
        data_we[0] = {WORDS_PER_LINE{1'b0}};
        data_we[1] = {WORDS_PER_LINE{1'b0}};
    end
end
assign write_index = (dcache_state == REFILL) ? reqbuffer_data_index : writebuffer_data_index;
generate
    genvar m;
    for (m = 0; m < WORDS_PER_LINE; m = m + 1) begin
        assign dcache_wdata[m] = (dcache_state == REFILL) ? dcache_ret_data[32*(m+1)-1:32*(m)] :
                                                            writebuffer_data_wdata;
    end
endgenerate

assign data_read_en = (dcache_state == REFILLDONE) ? 1'b1 : data_valid;
assign read_index   = (dcache_state == REFILL || dcache_state == REFILLDONE) 
                    ?  reqbuffer_data_index : data_index;

generate
    genvar i;
    genvar j;
    for (i = 0;i < ASSOC_NUM ;i = i + 1) begin
        simple_port_lutram #(
            .SIZE(BLOCK_NUMS),
            .DATA_WIDTH(DIRTY_WIDTH)
        ) dcache_ram_dirty(
            .clka(clk),
            .rsta(reset),

            //�˿��ź�
            .ena(1'b1),
            .wea(dirty_we[i]),
            .addra(dirty_index),
            .dina(dirty_wbit),
            .douta(dirty_rbit[i])            
        );

       simple_port_lutram  #(
            .SIZE(BLOCK_NUMS),
            .DATA_WIDTH(TAG_WIDTH + 1)
       ) dcache_ram_tag(
            .clka(clk),
            .rsta(reset),

            //�˿��ź�
            .ena(1'b1),
            .wea(tagv_we[i]),
            .addra(tagv_index),
            .dina(tagv_wdata),
            .douta({tag_rdata[i],valid_rdata[i]})
        );
        for (j = 0; j < WORDS_PER_LINE; j = j + 1) begin
            simple_port_ram #(
                .SIZE(BLOCK_NUMS),
                .DATA_WIDTH(DATA_WIDTH)
            ) dcache_ram_data(
                .clk(clk),
                .rst(reset),

                //д�˿�
                .ena(1'b1),
                .wea(data_we[i][j]),
                .addra(write_index),
                .dina(dcache_wdata[j]),

                //���˿�
                .enb(data_read_en),
                .addrb(read_index),
                .doutb(dcache_rdata[i][j])
            );
    end
end
endgenerate

always @(posedge clk) begin
    if(reset)
        plru_en <= 1'b0;
    else if(~data_valid & ~busy)  
        plru_en <= 1'b0;
    else if(data_valid)
        plru_en <= 1'b1;
end

generate
    genvar a;
    for (a = 0; a < BLOCK_NUMS; a = a + 1) begin
        PLRU #(
            .ASSOC_NUM(ASSOC_NUM)
        ) U_PLRU(
            .clk         (clk        ),
            .reset       (reset      ),
            .delayed_hit (delayed_hit),
            .update      (plru_en & (a == reqbuffer_data_index)),
            .plru        (plru[a]    ) 
        );
    end
endgenerate

always @(posedge clk) begin
    if(reset)
        write_state <= LOOKUP;
    else
        write_state <= write_nextstate;
end

always @(*) begin //Cache Write 
    if(reqbuffer_data_valid & delayed_cache_hit & reqbuffer_data_op)
        write_nextstate = WRITE_START;
    else
        write_nextstate = WRITE_IDLE;
end

always @(posedge clk) begin
    if(reset)
        uncache_state <= LOOKUP;
    else
        uncache_state <= uncache_nextstate;
end

always @(*) begin //uncache
    case (uncache_state)
        UNCACHE_LOOKUP: 
            if(data_valid & isUncache) begin
                if(data_op)
                    uncache_nextstate = UNCACHE_STORE;
                else
                    uncache_nextstate = UNCACHE_LOAD;
            end
            else
                uncache_nextstate = UNCACHE_LOOKUP;
        
        UNCACHE_LOAD:
            if(udcache_rd_rdy) 
                uncache_nextstate = UNCACHE_RETURN;
            else
                uncache_nextstate = UNCACHE_LOAD;
            
        UNCACHE_STORE:
            if(udcache_wr_rdy)
                uncache_nextstate = UNCACHE_RETURN;
            else
                uncache_nextstate = UNCACHE_STORE;

        UNCACHE_RETURN:
            if(udcache_ret_valid | udcache_wr_valid)
                uncache_nextstate = UNCACHE_DONE;
            else
                uncache_nextstate = UNCACHE_RETURN;

        UNCACHE_DONE:
            if(data_valid & isUncache) begin
                if(data_op)
                    uncache_nextstate = UNCACHE_STORE;
                else
                    uncache_nextstate = UNCACHE_LOAD;
            end
            else
                uncache_nextstate = UNCACHE_LOOKUP;

        default: uncache_nextstate = UNCACHE_LOOKUP;
    endcase
end

always @(posedge clk) begin
    if(reset)
        dcache_state <= LOOKUP;
    else
        dcache_state <= dcache_nextstate;
end

always @(*) begin //Cache ������Uncache��store��ָ��
    case (dcache_state)
        LOOKUP: 
            if(reqbuffer_data_isUncache) begin
                dcache_nextstate = LOOKUP;
            end
            else begin
                if(reqbuffer_data_valid & ~delayed_cache_hit) begin
                    if(dirty_rbit[plru[reqbuffer_data_index]]) //TODO:���Ƕ�·���
                        dcache_nextstate = MISSDIRTY;
                    else
                        dcache_nextstate = MISSCLEAN;
                end
                else begin
                    dcache_nextstate = LOOKUP;
                end
            end

        MISSDIRTY:
            if(dcache_wr_rdy)
                dcache_nextstate = WRITEBACK;
            else
                dcache_nextstate = MISSDIRTY;
        
        WRITEBACK:
            if(dcache_wr_valid)
                dcache_nextstate = MISSCLEAN;
            else
                dcache_nextstate = WRITEBACK;
        
        MISSCLEAN:
            if(dcache_rd_rdy)
                dcache_nextstate = REFILL;
            else
                dcache_nextstate = MISSCLEAN;

        REFILL:
            if(dcache_ret_valid)
                dcache_nextstate = REFILLDONE;
            else
                dcache_nextstate = REFILL;
        
        REFILLDONE:
            dcache_nextstate = LOOKUP;

        default: dcache_nextstate = LOOKUP;
    endcase
end
endmodule //DCache