module icache(       clk, resetn, exception, stall_0, stall_1, last_stall,
        //CPU_Pipeline side
        /*input*/   valid, tag, index, offset,
        /*output*/  addr_ok, data_ok, rdata,
        //AXI-Bus side
        /*input*/   rd_rdy, wr_rdy, ret_valid, ret_last, ret_data,
        /*output*/  rd_req, wr_req, rd_type, wr_type, rd_addr, wr_addr, wr_wstrb, wr_data
        );

    //clock and reset
    input clk;
    input resetn;
    input exception;
    input stall_0;
    input stall_1;
    output last_stall;

    // Cache && CPU-Pipeline
    input valid;                    //CPU request signal
    input[19:0] tag;                //CPU address[31:14]
    input[5:0] index;               //CPU address[13:6]
    input[5:0] offset;              //CPU address[5:0]: [5:2] is block offset , [1:0] is byte offset
    output addr_ok;                 //to show address and data is received by Cache
    output data_ok;                 //to show load or store operation is done
    output reg[31:0] rdata;         //data to be loaded from Cache to CPU

    // Cache && AXI-Bus
    input rd_rdy;                   //AXI-Bus read-ready signal
    input wr_rdy;                   //AXI-Bus write-ready signal
    input ret_valid;                //to show the data returned from AXI-Bus is valid
    input ret_last;                 //to show the data returned from AXI-Bus is the last one
    input[31:0] ret_data;           //data to be refilled from AXI-Bus to Cache
    output rd_req;                  //Cache read-request signal
    output wr_req;                  //Cache write-request signal
    output[2:0] rd_type;            //read type, assign 3'b100
    output[2:0] wr_type;            //write type, assign 3'b100
    output[31:0] rd_addr;           //read address
    output[31:0] wr_addr;           //write address
    output[3:0] wr_wstrb;           //write code,assign 4'b1111
    output[511:0] wr_data;          //data to be replaced from Cache to AXI-Bus

    //Cache RAM
    /*
    Basic information:
        256 groups : index 0~255
        4 ways : way 0/1/2/3
        16 words in a block : block offset 0~15
        Every block: 1 valid bit + 1 dirty bit + 18 tag bit + 16 * 32 data bit
        Total memory: 64KB
    */

    reg[5:0] VT_addr;
    reg[5:0] Data_addr;
    wire VT_Way0_wen;
    wire VT_Way1_wen;
    wire[20:0] VT_in;
    wire[20:0] VT_Way0_out;
    wire[20:0] VT_Way1_out;
    wire Way0_Valid = VT_Way0_out[20];
    wire Way1_Valid = VT_Way1_out[20];
    wire[19:0] Way0_Tag = VT_Way0_out[19:0];
    wire[19:0] Way1_Tag = VT_Way1_out[19:0];
    reg[63:0] Data_Way0_wen;
    reg[63:0] Data_Way1_wen;
    reg[511:0] Data_in;
    wire[511:0] Data_Way0_out;
    wire[511:0] Data_Way1_out;

    //FINITE STATE MACHINE
    reg[1:0] C_STATE;
    reg[1:0] N_STATE;
    parameter IDLE = 2'b00, LOOKUP = 2'b01, MISS = 2'b10, REFILL = 2'b11;

    //Request Buffer
    reg[5:0] index_RB;
    reg[19:0] tag_RB;
    reg[5:0] offset_RB;

    //Miss Buffer : information for MISS-REPLACE-REFILL use
    reg replace_way_MB;        //the way to be replaced and refilled
    reg[19:0] replace_tag_new_MB;   //tag requested from cpu(to be refilled)
    reg[5:0] replace_index_MB;
    reg[511:0] replace_data_MB;
    reg[3:0] ret_number_MB;         //how many data returned from AXI-Bus during REFILL state

    //replace select
    reg[511:0] replace_data;
    reg counter;
    reg age[63:0];

    //hit
    wire way0_hit;
    wire way1_hit;
    wire cache_hit;
    wire[1:0] hit_code;

    reg[31:0] rdata_way0;
    reg[31:0] rdata_way1;
    reg[63:0] byte_write;
    wire RBWr;
    wire VTen;

    integer i;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //Block Ram
    /*ValidTag_Block VT_Way0(
        clk, 1, VT_Way0_wen, VT_addr, VT_in, VT_Way0_out
    );
    ValidTag_Block VT_Way1(
        clk, 1, VT_Way1_wen, VT_addr, VT_in, VT_Way1_out
    );*/
    validtag_block VT_Way0(
        clk, resetn, VTen, VT_Way0_wen, VT_addr, VT_in, VT_Way0_out);
    validtag_block VT_Way1(
        clk, resetn, VTen, VT_Way1_wen, VT_addr, VT_in, VT_Way1_out);
    Data_Block Data_Way0(
        clk, VTen, Data_Way0_wen, Data_addr, Data_in, Data_Way0_out
    );
    Data_Block Data_Way1(
        clk, VTen, Data_Way1_wen, Data_addr, Data_in, Data_Way1_out
    );

    //tag compare && hit judgement
    assign way0_hit = Way0_Valid && (Way0_Tag == tag_RB);
    assign way1_hit = Way1_Valid && (Way1_Tag == tag_RB);
    assign cache_hit = way0_hit || way1_hit ;
    assign hit_code = {way1_hit,way0_hit};

    always@(posedge clk)
        if(!resetn)
            for(i=0;i<64;i=i+1)
                age[i] <= 1'b0;
        else 
            case(hit_code)
                2'b01: begin
                        age[index_RB] <= 1'b1;
                    end
                2'b10: begin
                        age[index_RB] <= 1'b0;
                    end
                default:age[index_RB] <= age[index_RB];
            endcase
    always@(*)
            if(age[index_RB])
                counter = 1'd1;
            else
                counter = 1'd0;
    always@(*)
        case(counter)
            1'b0:  //choose way0
                    replace_data = Data_Way0_out;
            default://choose way1
                    replace_data = Data_Way1_out;
        endcase

    //Request Buffer
    always@(posedge clk)
        if(!resetn) begin
            index_RB <= 6'd0;
            tag_RB <= 20'd0;
            offset_RB <= 6'd0;
        end
        else if(RBWr) begin
            index_RB <= index;
            tag_RB <= tag;
            offset_RB <= offset;
        end

    //Miss Buffer
    always@(posedge clk)
        if(!resetn) begin
            replace_way_MB <= 1'b0;
            replace_data_MB <= 512'd0;
            replace_index_MB <= 6'd0;
            replace_tag_new_MB <= 20'd0;
        end
        else if(C_STATE == LOOKUP) begin
            replace_way_MB <= counter;
            replace_data_MB <= replace_data;
            replace_index_MB <= index_RB;
            replace_tag_new_MB <= tag_RB;
        end
    always@(posedge clk)                //help locate the block offset during REFILL state
        if(!resetn)
            ret_number_MB <= 4'b0000;
        else if(/*rd_rdy*/C_STATE == MISS)
            ret_number_MB <= 4'b0000;
        else if(ret_valid)
            ret_number_MB <= ret_number_MB + 1;

    //reading from cache to cpu (load)
    always@(offset_RB,Data_Way0_out)
        case(offset_RB[5:2])
            4'd0:   rdata_way0 = Data_Way0_out[ 31:  0];
            4'd1:   rdata_way0 = Data_Way0_out[ 63: 32];
            4'd2:   rdata_way0 = Data_Way0_out[ 95: 64];
            4'd3:   rdata_way0 = Data_Way0_out[127: 96];
            4'd4:   rdata_way0 = Data_Way0_out[159:128];
            4'd5:   rdata_way0 = Data_Way0_out[191:160];
            4'd6:   rdata_way0 = Data_Way0_out[223:192];
            4'd7:   rdata_way0 = Data_Way0_out[255:224];
            4'd8:   rdata_way0 = Data_Way0_out[287:256];
            4'd9:   rdata_way0 = Data_Way0_out[319:288];
            4'd10:  rdata_way0 = Data_Way0_out[351:320];
            4'd11:  rdata_way0 = Data_Way0_out[383:352];
            4'd12:  rdata_way0 = Data_Way0_out[415:384];
            4'd13:  rdata_way0 = Data_Way0_out[447:416];
            4'd14:  rdata_way0 = Data_Way0_out[479:448];
            default:rdata_way0 = Data_Way0_out[511:480];
        endcase
    always@(offset_RB,Data_Way1_out)
        case(offset_RB[5:2])
            4'd0:   rdata_way1 = Data_Way1_out[ 31:  0];
            4'd1:   rdata_way1 = Data_Way1_out[ 63: 32];
            4'd2:   rdata_way1 = Data_Way1_out[ 95: 64];
            4'd3:   rdata_way1 = Data_Way1_out[127: 96];
            4'd4:   rdata_way1 = Data_Way1_out[159:128];
            4'd5:   rdata_way1 = Data_Way1_out[191:160];
            4'd6:   rdata_way1 = Data_Way1_out[223:192];
            4'd7:   rdata_way1 = Data_Way1_out[255:224];
            4'd8:   rdata_way1 = Data_Way1_out[287:256];
            4'd9:   rdata_way1 = Data_Way1_out[319:288];
            4'd10:  rdata_way1 = Data_Way1_out[351:320];
            4'd11:  rdata_way1 = Data_Way1_out[383:352];
            4'd12:  rdata_way1 = Data_Way1_out[415:384];
            4'd13:  rdata_way1 = Data_Way1_out[447:416];
            4'd14:  rdata_way1 = Data_Way1_out[479:448];
            default:rdata_way1 = Data_Way1_out[511:480];
        endcase
    always@(hit_code, rdata_way0, rdata_way1, ret_data)
        case(hit_code)
            2'b01:  rdata = rdata_way0;
            2'b10:  rdata = rdata_way1;
            default:rdata = ret_data;
        endcase

    //write from cpu to cache (store)
    always@(ret_data)
            Data_in = {16{ret_data}};
    always@(ret_number_MB)
        case(ret_number_MB)
            4'd0:   byte_write = {60'd0,4'b1111};
            4'd1:   byte_write = {56'd0,4'b1111,4'd0};
            4'd2:   byte_write = {52'd0,4'b1111,8'd0};
            4'd3:   byte_write = {48'd0,4'b1111,12'd0};
            4'd4:   byte_write = {44'd0,4'b1111,16'd0};
            4'd5:   byte_write = {40'd0,4'b1111,20'd0};
            4'd6:   byte_write = {36'd0,4'b1111,24'd0};
            4'd7:   byte_write = {32'd0,4'b1111,28'd0};
            4'd8:   byte_write = {28'd0,4'b1111,32'd0};
            4'd9:   byte_write = {24'd0,4'b1111,36'd0};
            4'd10:  byte_write = {20'd0,4'b1111,40'd0};
            4'd11:  byte_write = {16'd0,4'b1111,44'd0};
            4'd12:  byte_write = {12'd0,4'b1111,48'd0};
            4'd13:  byte_write = {8'd0,4'b1111,52'd0};
            4'd14:  byte_write = {4'd0,4'b1111,56'd0};
            default:byte_write = {4'b1111,60'd0};
        endcase
    always@(ret_valid, C_STATE, replace_way_MB, byte_write)
        if(ret_valid &&(C_STATE == REFILL)) begin
            case(replace_way_MB)
                1'b0:  begin
                            Data_Way0_wen = byte_write;
                            Data_Way1_wen = 64'd0;
                        end
                default:begin
                            Data_Way0_wen = 64'd0;
                            Data_Way1_wen = byte_write;
                        end
            endcase
        end
        else begin
            Data_Way0_wen = 64'd0;
            Data_Way1_wen = 64'd0;
        end

    //replace from cache to mem (write memory)
    assign wr_addr = 32'd0 ;
    assign wr_data = 512'd0;
    assign wr_type = 3'b010;
    assign wr_wstrb = 4'b1111;

    //refill from mem to cache (read memory)
    assign VT_Way0_wen = ret_valid && (replace_way_MB == 0) && (ret_number_MB == 4'h8);
    assign VT_Way1_wen = ret_valid && (replace_way_MB == 1) && (ret_number_MB == 4'h8);
    assign VT_in = {1'b1,replace_tag_new_MB};
    assign rd_type = 3'b010;
    assign rd_addr = {replace_tag_new_MB, replace_index_MB, 6'b000000};

    //block address control
    always@(index, C_STATE, replace_index_MB)
        if(C_STATE == REFILL) begin
            VT_addr = replace_index_MB;
            Data_addr = replace_index_MB;
        end
        else begin
            VT_addr = index;
            Data_addr = index;
        end


    //main FSM
    /*
        LOOKUP: Cache checks hit (if hit,begin read/write)
        MISS: Cache doesn't hit and wait for replace
        REPLACE: Cache replaces data (writing memory)
        REFILL: Cache refills data (reading memory)
    */
    always@(posedge clk)
        if(!resetn)
            C_STATE <= IDLE;
        else
            C_STATE <= N_STATE;
    always@(C_STATE, valid, cache_hit, /*rd_rdy,*/ ret_valid, ret_last, exception)
        case(C_STATE)
            IDLE:   if(valid)
                        N_STATE = LOOKUP;
                    else
                        N_STATE = IDLE;
            LOOKUP: if(exception)
                        N_STATE = IDLE;
                    else if(!cache_hit)
                        N_STATE = MISS;
                    else if(valid)
                        N_STATE = LOOKUP;
                    else
                        N_STATE = IDLE;
            MISS:   /*if(!rd_rdy)
                        N_STATE = MISS;
                    else*/
                        N_STATE = REFILL;
            REFILL: if(ret_valid && ret_last)
                        N_STATE = LOOKUP;
                    else
                        N_STATE = REFILL;
            default: N_STATE = IDLE;
        endcase

    //output signals
    assign addr_ok = 1'b1;
    assign data_ok = (C_STATE == IDLE) || ((C_STATE == LOOKUP) && cache_hit) ;
    //assign rd_req = (N_STATE == REFILL) ;
    assign rd_req = ((C_STATE == MISS) /*& rd_rdy*/) | ((C_STATE == REFILL) & ~(ret_valid & ret_last));
    assign wr_req = 1'b0 ;

    assign last_stall = (C_STATE == REFILL) & ret_valid & ret_last;
    assign RBWr = valid ;
    assign VTen = ~stall_1 | (C_STATE == REFILL);

endmodule

module dcache(       clk, resetn, DMRd, stall_0, stall_1, last_stall, last_conflict,
        //CPU_Pipeline side
        /*input*/   valid, op, tag, index, offset, wstrb, wdata,
        /*output*/  addr_ok, data_ok, rdata,
        //AXI-Bus side
        /*input*/   rd_rdy, wr_rdy, ret_valid, ret_last, ret_data, wr_valid,
        /*output*/  rd_req, wr_req, rd_type, wr_type, rd_addr, wr_addr, wr_wstrb, wr_data,
                    uncache_out, cache_sel
        );

    //clock and reset
    input clk;
    input resetn;
    input DMRd;
    input stall_0;
    input stall_1;
    output last_stall;
    output last_conflict;

    // Cache && CPU-Pipeline
    input valid;                    //CPU request signal
    input op;                       //CPU opcode: 0 = load , 1 = store
    input[19:0] tag;                //CPU address[31:14]
    input[5:0] index;               //CPU address[13:6]
    input[5:0] offset;              //CPU address[5:0]: [5:2] is block offset , [1:0] is byte offset
    input[3:0] wstrb;               //write code,including 0001 , 0010 , 0100, 1000, 0011 , 1100 , 1111
    input[31:0] wdata;              //data to be stored from CPU to Cache
    output addr_ok;                 //to show address and data is received by Cache
    output data_ok;                 //to show load or store operation is done
    output reg[31:0] rdata;         //data to be loaded from Cache to CPU

    // Cache && AXI-Bus
    input rd_rdy;                   //AXI-Bus read-ready signal
    input wr_rdy;                   //AXI-Bus write-ready signal
    input ret_valid;                //to show the data returned from AXI-Bus is valid
    input ret_last;                 //to show the data returned from AXI-Bus is the last one
    input[31:0] ret_data;           //data to be refilled from AXI-Bus to Cache
    input wr_valid;
    output rd_req;                  //Cache read-request signal
    output wr_req;                  //Cache write-request signal
    output[2:0] rd_type;            //read type, assign 3'b100
    output[2:0] wr_type;            //write type, assign 3'b100
    output[31:0] rd_addr;           //read address
    output[31:0] wr_addr;           //write address
    output[3:0] wr_wstrb;           //write code,assign 4'b1111
    output[511:0] wr_data;          //data to be replaced from Cache to AXI-Bus

    input[31:0] uncache_out;
    input cache_sel;


    //Cache RAM
    /*
    Basic information:
        256 groups : index 0~255
        4 ways : way 0/1/2/3
        16 words in a block : block offset 0~15
        Every block: 1 valid bit + 1 dirty bit + 18 tag bit + 16 * 32 data bit
        Total memory: 64KB
    */

    reg[5:0] VT_addr;
    reg[5:0] D_addr;
    reg[5:0] Data_addr;
    wire VT_Way0_wen;
    wire VT_Way1_wen;
    wire[20:0] VT_in;
    wire[20:0] VT_Way0_out;
    wire[20:0] VT_Way1_out;
    wire Way0_Valid = VT_Way0_out[20];
    wire Way1_Valid = VT_Way1_out[20];
    wire[19:0] Way0_Tag = VT_Way0_out[19:0];
    wire[19:0] Way1_Tag = VT_Way1_out[19:0];
    wire D_Way0_wen;
    wire D_Way1_wen;
    wire D_in;
    wire Way0_Dirty;
    wire Way1_Dirty;
    reg[63:0] Data_Way0_wen;
    reg[63:0] Data_Way1_wen;
    reg[511:0] Data_in;
    wire[511:0] Data_Way0_out;
    wire[511:0] Data_Way1_out;

    //FINITE STATE MACHINE
    reg[2:0] C_STATE;
    reg[2:0] N_STATE;
    parameter IDLE = 3'b000, LOOKUP = 3'b001,  SELECT = 3'b010,
              MISS = 3'b011, REPLACE = 3'b100, REFILL = 3'b101;

    reg C_STATE_WB;
    reg N_STATE_WB;
    parameter IDLE_WB = 1'b0, WRITE = 1'b1;


    //Request Buffer
    reg op_RB;
    reg[5:0] index_RB;
    reg[19:0] tag_RB;
    reg[5:0] offset_RB;
    reg[3:0] wstrb_RB;
    reg[31:0] wdata_RB;


    //Miss Buffer : information for MISS-REPLACE-REFILL use
    reg replace_way_MB;        //the way to be replaced and refilled
    reg replace_Valid_MB;
    reg replace_Dirty_MB;
    reg[19:0] replace_tag_old_MB;   //unmatched tag in cache(to be replaced)
    reg[19:0] replace_tag_new_MB;   //tag requested from cpu(to be refilled)
    reg[5:0] replace_index_MB;
    reg[511:0] replace_data_MB;
    reg[3:0] ret_number_MB;         //how many data returned from AXI-Bus during REFILL state

    //Write Buffer
    reg[31:0] wdata_WB;
    reg way_WB;
    reg[3:0] wstrb_WB;
    reg[5:0] offset_WB;
    reg[5:0] index_WB;
    reg[19:0] tag_WB;

    //replace select
    reg[511:0] replace_data;
    reg replace_Valid;
    reg replace_Dirty;
    reg[19:0] replace_tag_old;
    reg counter;
    reg age[63:0];

    //hit
    wire way0_hit;
    wire way1_hit;
    wire cache_hit;
    wire[1:0] hit_code;
    wire hit_write;
    wire write_conflict2;
    wire write_bypass1;
    reg[31:0] wdata_bypass1;
    reg write_bypass1_delay;

    reg[31:0] rdata_way0;
    reg[31:0] rdata_way1;
    reg[63:0] byte_write1;
    reg[63:0] byte_write2;

    integer i;
    wire addr_select;
    wire ok;
    wire VTen;

    reg conflict2_reg;
    reg[31:0] conflict2_data;
    wire rdata_sel;
    reg[31:0] rdata_prior;
    wire[5:0] addr_addr;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //Block Ram
    /*ValidTag_Block VT_Way0(
        clk, 1, VT_Way0_wen, VT_addr, VT_in, VT_Way0_out
    );
    ValidTag_Block VT_Way1(
        clk, 1, VT_Way1_wen, VT_addr, VT_in, VT_Way1_out
    );
    Dirty_Block D_Way0(
        clk, 1, D_Way0_wen, D_addr, D_in, Way0_Dirty
    );
    Dirty_Block D_Way1(
        clk, 1, D_Way1_wen, D_addr, D_in, Way1_Dirty
    );*/
    validtag_block VT_Way0(
        clk, resetn, VTen, VT_Way0_wen, VT_addr, VT_in, VT_Way0_out);
    validtag_block VT_Way1(
        clk, resetn, VTen, VT_Way1_wen, VT_addr, VT_in, VT_Way1_out);
    dirty_block D_Way0(
        clk, resetn, D_Way0_wen, D_addr, D_in, Way0_Dirty);
    dirty_block D_Way1(
        clk, resetn, D_Way1_wen, D_addr, D_in, Way1_Dirty);

    Data_Block Data_Way0(
        clk, 1, Data_Way0_wen, Data_addr, Data_in, Data_Way0_out
    );
    Data_Block Data_Way1(
        clk, 1, Data_Way1_wen, Data_addr, Data_in, Data_Way1_out
    );

    //tag compare && hit judgement
    assign way0_hit = Way0_Valid && (Way0_Tag == tag_RB);
    assign way1_hit = Way1_Valid && (Way1_Tag == tag_RB);
    assign cache_hit = way0_hit || way1_hit ;
    assign hit_write = (C_STATE == LOOKUP) && op_RB && cache_hit;
    assign hit_code = {way1_hit,way0_hit};

    /*assign write_conflict1 = hit_write && DMRd
                            && ({tag,index,offset}!={tag_RB,index_RB,offset_RB});*/
    assign write_conflict2 = (C_STATE_WB == WRITE) && DMRd
                            && |(index ^ index_WB);
    assign write_bypass1 = hit_write && DMRd
                            && ~|({tag,index,offset} ^ {tag_RB,index_RB,offset_RB});
    /*assign write_bypass2 = (C_STATE_WB == WRITE) && DMRd
                            && ({tag,index,offset}=={tag_WB,index_WB,offset_WB});*/

    assign addr_select = stall_0 | ~ok;
    //assign ok =  addr_ok & data_ok;
    assign ok = ((C_STATE == IDLE) & ~write_conflict2) | ((C_STATE == LOOKUP) & ~write_conflict2 & cache_hit);
    assign VTen = ~stall_1 | (C_STATE == REFILL);

    always@(posedge clk)
        if(!resetn)
            for(i=0;i<64;i=i+1)
                age[i] <= 1'b0;
        else 
            case(hit_code)
                2'b01: begin
                        age[index_RB] <= 1'b1;
                    end
                2'b10: begin
                        age[index_RB] <= 1'b0;
                    end
                default:age[index_RB] <= age[index_RB];
            endcase
    always@(*)
            if(age[index_RB])
                counter = 1'd1;
            else
                counter = 1'd0;

    always@(*)
        case(counter)
            1'b0:  begin   //choose way0
                    replace_Valid = Way0_Valid;
                    replace_Dirty = Way0_Dirty;
                    replace_tag_old = Way0_Tag;
                    replace_data = Data_Way0_out;
            end
            default:begin   //choose way1
                    replace_Valid = Way1_Valid;
                    replace_Dirty = Way1_Dirty;
                    replace_tag_old = Way1_Tag;
                    replace_data = Data_Way1_out;
            end
        endcase

    //Request Buffer
    always@(posedge clk)
        if(!resetn) begin
            op_RB <= 1'b0;
            index_RB <= 6'd0;
            tag_RB <= 20'd0;
            offset_RB <= 6'd0;
            wstrb_RB <= 4'd0;
            wdata_RB <= 32'd0;
            write_bypass1_delay <= 1'b0;
            wdata_bypass1 <= 32'd0;
        end
        else if(valid && ok) begin
            op_RB <= op;
            index_RB <= index;
            tag_RB <= tag;
            offset_RB <= offset;
            wstrb_RB <= wstrb;
            wdata_RB <= wdata;
            write_bypass1_delay <= write_bypass1;
            wdata_bypass1 <= wdata_RB;
        end
        else if(~addr_ok && data_ok)
            op_RB <= 1'b0;

    //Miss Buffer
    always@(posedge clk)
        if(!resetn) begin
            replace_way_MB <= 1'b0;
            replace_data_MB <= 512'd0;
            replace_Valid_MB <= 1'b0;
            replace_Dirty_MB <= 1'b0;
            replace_index_MB <= 6'd0;
            replace_tag_old_MB <= 20'd0;
            replace_tag_new_MB <= 20'd0;
        end
        else if(C_STATE == SELECT) begin
            replace_way_MB <= counter;
            replace_data_MB <= replace_data;
            replace_Valid_MB <= replace_Valid;
            replace_Dirty_MB <= replace_Dirty;
            replace_index_MB <= index_RB;
            replace_tag_old_MB <= replace_tag_old;
            replace_tag_new_MB <= tag_RB;
        end
    always@(posedge clk)                //help locate the block offset during REFILL state
        if(!resetn)
            ret_number_MB <= 4'b0000;
        else if(/*rd_rdy*/C_STATE == MISS)
            ret_number_MB <= 4'b0000;
        else if(ret_valid)
            ret_number_MB <= ret_number_MB + 1;

    //Write Buffer
    always@(posedge clk)
        if(!resetn) begin
            wdata_WB <= 32'd0;
            way_WB <= 1'b0;
            wstrb_WB <= 4'd0;
            offset_WB <= 6'd0;
            index_WB <= 6'd0;
            tag_WB <= 20'd0;
        end
        else if(hit_write) begin
            wdata_WB <= wdata_RB;
            way_WB <= way0_hit ? 1'd0 : 1'd1;
            wstrb_WB <= wstrb_RB;
            offset_WB <= offset_RB;
            index_WB <= index_RB;
            tag_WB <= tag_RB;
        end

    //reading from cache to cpu (load)
    always@(posedge clk)
        if(!resetn) begin
            conflict2_reg <= 1'b0;
            conflict2_data <= 32'd0;
        end
        else begin
            conflict2_reg <= write_conflict2;
            conflict2_data <= rdata;
        end
    always@(offset_RB,Data_Way0_out)
        case(offset_RB[5:2])
            4'd0:   rdata_way0 = Data_Way0_out[ 31:  0];
            4'd1:   rdata_way0 = Data_Way0_out[ 63: 32];
            4'd2:   rdata_way0 = Data_Way0_out[ 95: 64];
            4'd3:   rdata_way0 = Data_Way0_out[127: 96];
            4'd4:   rdata_way0 = Data_Way0_out[159:128];
            4'd5:   rdata_way0 = Data_Way0_out[191:160];
            4'd6:   rdata_way0 = Data_Way0_out[223:192];
            4'd7:   rdata_way0 = Data_Way0_out[255:224];
            4'd8:   rdata_way0 = Data_Way0_out[287:256];
            4'd9:   rdata_way0 = Data_Way0_out[319:288];
            4'd10:  rdata_way0 = Data_Way0_out[351:320];
            4'd11:  rdata_way0 = Data_Way0_out[383:352];
            4'd12:  rdata_way0 = Data_Way0_out[415:384];
            4'd13:  rdata_way0 = Data_Way0_out[447:416];
            4'd14:  rdata_way0 = Data_Way0_out[479:448];
            default:rdata_way0 = Data_Way0_out[511:480];
        endcase
    always@(offset_RB,Data_Way1_out)
        case(offset_RB[5:2])
            4'd0:   rdata_way1 = Data_Way1_out[ 31:  0];
            4'd1:   rdata_way1 = Data_Way1_out[ 63: 32];
            4'd2:   rdata_way1 = Data_Way1_out[ 95: 64];
            4'd3:   rdata_way1 = Data_Way1_out[127: 96];
            4'd4:   rdata_way1 = Data_Way1_out[159:128];
            4'd5:   rdata_way1 = Data_Way1_out[191:160];
            4'd6:   rdata_way1 = Data_Way1_out[223:192];
            4'd7:   rdata_way1 = Data_Way1_out[255:224];
            4'd8:   rdata_way1 = Data_Way1_out[287:256];
            4'd9:   rdata_way1 = Data_Way1_out[319:288];
            4'd10:  rdata_way1 = Data_Way1_out[351:320];
            4'd11:  rdata_way1 = Data_Way1_out[383:352];
            4'd12:  rdata_way1 = Data_Way1_out[415:384];
            4'd13:  rdata_way1 = Data_Way1_out[447:416];
            4'd14:  rdata_way1 = Data_Way1_out[479:448];
            default:rdata_way1 = Data_Way1_out[511:480];
        endcase
    always@(write_bypass1_delay,wdata_bypass1, conflict2_data, cache_sel, uncache_out)
        if(cache_sel)
            rdata_prior = uncache_out;
        else if(write_bypass1_delay)
            rdata_prior = wdata_bypass1;
        else
            rdata_prior = conflict2_data;

    assign rdata_sel = (cache_sel | write_bypass1_delay | conflict2_reg);

    always@(way0_hit, rdata_way0, rdata_way1, rdata_sel, rdata_prior)
        if(rdata_sel)
            rdata = rdata_prior;
        else 
            case(way0_hit)
                1'b0:    rdata = rdata_way1;
                default: rdata = rdata_way0;
            endcase

    //write from cpu to cache (store)
    always@(wdata_WB, wstrb_WB, C_STATE_WB, ret_data)
        if(C_STATE_WB == WRITE) begin
            case(wstrb_WB)
                4'b0001:    Data_in = {64{wdata_WB[7:0]}};
                4'b0010:    Data_in = {64{wdata_WB[7:0]}};
                4'b0100:    Data_in = {64{wdata_WB[7:0]}};
                4'b1000:    Data_in = {64{wdata_WB[7:0]}};
                4'b0011:    Data_in = {32{wdata_WB[15:0]}};
                4'b1100:    Data_in = {32{wdata_WB[15:0]}};
                default:    Data_in = {16{wdata_WB}};
            endcase
        end
        else
            Data_in = {16{ret_data}};
    always@(offset_WB, wstrb_WB)
        case(offset_WB[5:2])
            4'd0:   byte_write1 = {60'd0,wstrb_WB};
            4'd1:   byte_write1 = {56'd0,wstrb_WB,4'd0};
            4'd2:   byte_write1 = {52'd0,wstrb_WB,8'd0};
            4'd3:   byte_write1 = {48'd0,wstrb_WB,12'd0};
            4'd4:   byte_write1 = {44'd0,wstrb_WB,16'd0};
            4'd5:   byte_write1 = {40'd0,wstrb_WB,20'd0};
            4'd6:   byte_write1 = {36'd0,wstrb_WB,24'd0};
            4'd7:   byte_write1 = {32'd0,wstrb_WB,28'd0};
            4'd8:   byte_write1 = {28'd0,wstrb_WB,32'd0};
            4'd9:   byte_write1 = {24'd0,wstrb_WB,36'd0};
            4'd10:  byte_write1 = {20'd0,wstrb_WB,40'd0};
            4'd11:  byte_write1 = {16'd0,wstrb_WB,44'd0};
            4'd12:  byte_write1 = {12'd0,wstrb_WB,48'd0};
            4'd13:  byte_write1 = {8'd0,wstrb_WB,52'd0};
            4'd14:  byte_write1 = {4'd0,wstrb_WB,56'd0};
            default:byte_write1 = {wstrb_WB,60'd0};
        endcase
    always@(ret_number_MB)
        case(ret_number_MB)
            4'd0:   byte_write2 = {60'd0,4'b1111};
            4'd1:   byte_write2 = {56'd0,4'b1111,4'd0};
            4'd2:   byte_write2 = {52'd0,4'b1111,8'd0};
            4'd3:   byte_write2 = {48'd0,4'b1111,12'd0};
            4'd4:   byte_write2 = {44'd0,4'b1111,16'd0};
            4'd5:   byte_write2 = {40'd0,4'b1111,20'd0};
            4'd6:   byte_write2 = {36'd0,4'b1111,24'd0};
            4'd7:   byte_write2 = {32'd0,4'b1111,28'd0};
            4'd8:   byte_write2 = {28'd0,4'b1111,32'd0};
            4'd9:   byte_write2 = {24'd0,4'b1111,36'd0};
            4'd10:  byte_write2 = {20'd0,4'b1111,40'd0};
            4'd11:  byte_write2 = {16'd0,4'b1111,44'd0};
            4'd12:  byte_write2 = {12'd0,4'b1111,48'd0};
            4'd13:  byte_write2 = {8'd0,4'b1111,52'd0};
            4'd14:  byte_write2 = {4'd0,4'b1111,56'd0};
            default:byte_write2 = {4'b1111,60'd0};
        endcase
    always@(C_STATE_WB,C_STATE,way_WB,byte_write1,byte_write2,ret_valid,replace_way_MB)
        if(C_STATE_WB) begin
            case(way_WB)
                1'b0:   begin
                            Data_Way0_wen = byte_write1;
                            Data_Way1_wen = 64'd0;
                        end
                default:begin
                            Data_Way0_wen = 64'd0;
                            Data_Way1_wen = byte_write1;
                        end
            endcase
        end
        else if(ret_valid &&(C_STATE == REFILL)) begin
            case(replace_way_MB)
                1'b0:   begin
                            Data_Way0_wen = byte_write2;
                            Data_Way1_wen = 64'd0;
                        end
                default:begin
                            Data_Way0_wen = 64'd0;
                            Data_Way1_wen = byte_write2;
                        end
            endcase
        end
        else begin
            Data_Way0_wen = 64'd0;
            Data_Way1_wen = 64'd0;
        end

    //replace from cache to mem (write memory)
    assign wr_addr = {replace_tag_old_MB, replace_index_MB, 6'b000000} ;
    assign wr_data = replace_data_MB;
    assign wr_type = 3'b010;
    assign wr_wstrb = 4'b1111;

    //refill from mem to cache (read memory)
    assign VT_Way0_wen = ret_valid && (replace_way_MB == 0) && (ret_number_MB == 4'h8);
    assign VT_Way1_wen = ret_valid && (replace_way_MB == 1) && (ret_number_MB == 4'h8);
    assign VT_in = {1'b1,replace_tag_new_MB};
    assign D_Way0_wen = ((C_STATE_WB ==WRITE) && (way_WB == 1'd0)) || (ret_valid && (replace_way_MB == 0));
    assign D_Way1_wen = ((C_STATE_WB ==WRITE) && (way_WB == 1'd1)) || (ret_valid && (replace_way_MB == 1));
    assign D_in = ret_valid ? 0 : (C_STATE_WB ==WRITE);
    assign rd_type = 3'b010;
    assign rd_addr = {replace_tag_new_MB, replace_index_MB, 6'b000000};

    //block address control
    always@(C_STATE_WB, index_RB, index, addr_select, index_WB)
        if(C_STATE_WB == WRITE)
            Data_addr = index_WB;
        else if(addr_select)
            Data_addr = index_RB;
        else 
            Data_addr = index;

    always@(C_STATE_WB, index_RB, index_WB)
        if(C_STATE_WB == WRITE)
            D_addr = index_WB;
        else
            D_addr = index_RB;


    always@(data_ok, addr_addr, index_RB)
        if(!data_ok)
            VT_addr = index_RB;
        else
            VT_addr = addr_addr;

    assign addr_addr = addr_ok ? index : index_RB;

    //main FSM
    /*
        LOOKUP: Cache checks hit (if hit,begin read/write)
        MISS: Cache doesn't hit and wait for replace
        REPLACE: Cache replaces data (writing memory)
        REFILL: Cache refills data (reading memory)
    */
    always@(posedge clk)
        if(!resetn)
            C_STATE <= IDLE;
        else
            C_STATE <= N_STATE;
    always@(C_STATE, valid, cache_hit, wr_rdy,/* rd_rdy,*/ ret_valid, ret_last,
            replace_Valid_MB, replace_Dirty_MB, write_conflict2,
            /*wr_valid,*/ C_STATE_WB)
        case(C_STATE)
            IDLE:   if(valid)
                        N_STATE = LOOKUP;
                    else
                        N_STATE = IDLE;
            LOOKUP: if(!cache_hit) begin
                        if(C_STATE_WB == WRITE)
                            N_STATE = LOOKUP;
                        else
                            N_STATE = SELECT;
                    end
                    else if(write_conflict2)
                        N_STATE = IDLE;
                    else if(valid)
                        N_STATE = LOOKUP;
                    else
                        N_STATE = IDLE;
            SELECT: N_STATE = MISS;
            MISS:   if(!replace_Valid_MB || !replace_Dirty_MB)            //data is not dirty
                        N_STATE = REFILL;
                    else if(!wr_rdy)                                    //data is dirty
                        N_STATE = MISS;
                    else
                        N_STATE = REPLACE;
            REPLACE:/*if(!wr_valid)
                        N_STATE = REPLACE;
                    else*/
                        N_STATE = REFILL;
            REFILL: if(ret_valid && ret_last)
                        N_STATE = LOOKUP;
                    else
                        N_STATE = REFILL;
            default: N_STATE = IDLE;
        endcase

    //Write Buffer FSM
    always@(posedge clk)
        if(!resetn)
            C_STATE_WB <= IDLE_WB;
        else
            C_STATE_WB <= N_STATE_WB;
    always@(hit_write)
        if(hit_write)
            N_STATE_WB = WRITE;
        else
            N_STATE_WB = IDLE_WB;

    //output signals
    /*assign addr_ok = (C_STATE == SELECT) | (C_STATE == MISS) | (C_STATE == REPLACE) 
                    | (C_STATE == HOLD) | (C_STATE == REFILL) |
                    | ((C_STATE == LOOKUP) && !write_conflict1 && !write_conflict2)
                    | ((C_STATE == IDLE) && !write_conflict2);*/
    //assign addr_ok = ~( ((C_STATE == LOOKUP) & write_conflict2) | ((C_STATE == IDLE) & write_conflict2) );
    assign addr_ok = ~ write_conflict2;
    assign data_ok = (C_STATE == IDLE) || ((C_STATE == LOOKUP) && cache_hit) ;
    //assign rd_req = (N_STATE == REFILL) ;
    //assign wr_req = (N_STATE == REPLACE) ;
    assign rd_req = ((C_STATE == MISS) & ~(replace_Valid_MB &replace_Dirty_MB)) |
                    ((C_STATE == REPLACE) & wr_valid) |
                    ((C_STATE == REFILL) & ~(ret_valid&ret_last));
    /*assign wr_req = ((C_STATE == MISS) & replace_Valid_MB & replace_Dirty_MB ) 
                    | ((C_STATE == REPLACE) & ~wr_valid);*/
    assign wr_req =  (C_STATE == MISS) & replace_Valid_MB & replace_Dirty_MB & wr_rdy;

    assign last_stall = (C_STATE == REFILL) & ret_valid & ret_last;
    assign last_conflict = write_conflict2;

endmodule

module uncache_dm(
        clk, resetn, DMSel, last_stall,
        //CPU_Pipeline side
        /*input*/   valid, op, addr, wstrb, wdata,
        /*output*/  data_ok, rdata,
        //AXI-Bus side
        /*input*/   rd_rdy, wr_rdy, ret_valid, ret_last, ret_data, wr_valid,
        /*output*/  rd_req, wr_req, rd_type, wr_type, rd_addr, wr_addr, wr_wstrb, wr_data
);

    input clk;
    input resetn;
    input[2:0] DMSel;
    output last_stall;

    input valid;
    input op;
    input[31:0] addr;
    input[3:0] wstrb;
    input[31:0] wdata;

    output data_ok;
    output[31:0] rdata;

    input rd_rdy;
    input wr_rdy;
    input ret_valid;
    input ret_last;
    input[31:0] ret_data;
    input wr_valid;

    output rd_req;
    output wr_req;
    output[2:0] rd_type;
    output[2:0] wr_type;
    output[31:0] rd_addr;
    output[31:0] wr_addr;
    output[3:0] wr_wstrb;
    output reg[31:0] wr_data;

    reg[1:0] C_STATE;
    reg[1:0] N_STATE;

    parameter DEFAULT = 2'b00;
    parameter LOAD    = 2'b01;
    parameter STORE   = 2'b10;
    parameter FINISH  = 2'b11;

    wire load;
    wire store;
    reg[31:0] data_reg;

    assign load = valid & ~op;
    assign store = valid & op;

    always@(posedge clk)
        if(!resetn)
            C_STATE <= DEFAULT;
        else
            C_STATE <= N_STATE;

    always@(C_STATE, load, store, /*rd_rdy,*/ wr_rdy, ret_valid, ret_last/* wr_valid*/)
        case(C_STATE)
            DEFAULT:    if(load /*&& rd_rdy*/)
                            N_STATE = LOAD;
                        else if(store && wr_rdy)
                            N_STATE = STORE;
                        else
                            N_STATE = DEFAULT;
            LOAD:       if(ret_valid && ret_last)
                            N_STATE = FINISH;
                        else
                            N_STATE = LOAD;
            STORE:     // if(wr_valid)
                            N_STATE = FINISH;
                        //else
                        //    N_STATE = STORE;
            FINISH:     N_STATE = DEFAULT;
            default:    N_STATE = DEFAULT;
        endcase

    /*assign data_ok = ~valid |
                    ((C_STATE == LOAD) & ret_valid & ret_last) |
                    ((C_STATE == STORE) & wr_valid);*/
    assign data_ok = ~valid | (C_STATE == FINISH);
    assign rdata = data_reg;

    assign last_stall = ((C_STATE == LOAD) & ret_valid & ret_last) | (C_STATE == STORE);

    always@(posedge clk)
        if(!resetn)
            data_reg <= 32'd0;
        else if(ret_valid & ret_last)
            data_reg <= ret_data;

    //assign rd_req = (N_STATE == LOAD);
    //assign wr_req = (N_STATE == STORE);
    assign rd_req = ((C_STATE == DEFAULT) & load /*& rd_rdy*/) | ((C_STATE == LOAD) & ~(ret_valid & ret_last));
    assign wr_req = ((C_STATE == DEFAULT) & store & wr_rdy) ;
    assign rd_type =
        ((DMSel==3'b011) || (DMSel==3'b100)) ?  3'd0 :
        ((DMSel==3'b101) || (DMSel==3'b110)) ?  3'd1 :
                                3'd2;
    assign wr_type =
        (DMSel==3'b000)  ?  3'd0 :
        (DMSel==3'b001)  ?  3'd1 :
                                3'd2;
    assign rd_addr = addr;
    assign wr_addr = addr;
    assign wr_wstrb = wstrb;
    always@(wstrb, wdata)
        case(wstrb)
            4'b0001:wr_data = {4{wdata[7:0]}};
            4'b0010:wr_data = {4{wdata[7:0]}};
            4'b0100:wr_data = {4{wdata[7:0]}};
            4'b1000:wr_data = {4{wdata[7:0]}};
            4'b0011:wr_data = {2{wdata[15:0]}};
            4'b1100:wr_data = {2{wdata[15:0]}};
            default:wr_data = wdata;
        endcase
endmodule

module dirty_block(clk, rst, wen, addr, din, dout);
    input clk;
    input rst;
    input wen;
    input[5:0] addr;
    input din;

    output reg dout;
    reg[63:0] dirty;

    always@(posedge clk)
        if(!rst)
            dirty <= 64'd0;
        else if(wen)
            dirty[addr] <= din;
    
    always@(posedge clk)
        if(!rst)
            dout <= 1'b0;
        else
            dout <= dirty[addr];

endmodule

module validtag_block(clk, rst, en, wen, addr, din, dout);
    input clk;
    input rst;
    input en;
    input wen;
    input[5:0] addr;
    input[20:0] din;

    output reg[20:0] dout;
    
    reg[20:0] validtag[63:0];

    integer i;

always@(posedge clk)
        if(!rst)
            for(i=0;i<64;i=i+1)
            validtag[i] <= 21'd0;
        else if(wen)
            validtag[addr] <= din;

    
    always@(posedge clk)
        if(!rst)
            dout <= 21'd0;
        else if(en) 
            dout <= validtag[addr];
            

endmodule

