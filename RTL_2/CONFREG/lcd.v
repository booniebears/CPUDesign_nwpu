`define LCD_CMD_INST 4'd1
`define LCD_CMD_DATA 4'd2

`define STATE_IDLE   3'd0
`define STATE_RESET  3'd1
`define STATE_INIT   3'd2

`define LCD_BITS_VALID 31
`define LCD_BITS_CMD   19:16
`define LCD_BITS_DATA  15:0

`define ONE_SECOND 13333333

`define UP      2'b00
`define RIGHT   2'b01
`define DOWN    2'b11
`define LEFT    2'b10

module lcd(
    input          clk, //33MHz
    input          resetn, 
    input  [1:0]   btn_pressed,
    input  [31: 0] lcd_confreg_i,
    output [31: 0] lcd_confreg_o,

    output         lcd_hw_rst,
    output         lcd_hw_cs,
    output         lcd_hw_rs,
    output         lcd_hw_wr,
    output         lcd_hw_rd,
    output [15: 0] lcd_hw_data,
    output         lcd_hw_bl_ctr
);
    reg game_start;

    reg [2:0] lcd_state;
    wire in_reset_state, hard_reset_end;
    
    reg [24:0] counter;
    always @(posedge clk)
        if (~resetn | hard_reset_end)
            counter <= 25'b0;
        else
            counter <= counter + 1;
    // lcd_confreg_i: {valid, 11'b0, cmd, data}

    // hard reset
    assign in_reset_state = (lcd_state == `STATE_RESET);
    assign hard_reset_end = in_reset_state & (counter == 25'hffffff);
    
    // init state, data from reset_ram
    wire in_init_state;
    assign in_init_state = (lcd_state == `STATE_INIT);

    reg [9:0] init_addr;
    always @(posedge clk)
        if (hard_reset_end)
            init_addr <= 10'b0;
        else 
            init_addr <= init_addr + 1;
    reg init_rdata_valid;
    always @(posedge clk)
        if (hard_reset_end)
            init_rdata_valid <= 1'b0;
        else
            init_rdata_valid <= 1'b1;
    wire [31:0] init_rdata;
    lcd_init_data1 reset_ram_module(//2KB
        .clka  (clk),
        .addra (init_addr),
        .douta (init_rdata),
        .ena   (1'b1)
    );
    
    reg init_seq1_end;
    always @(posedge clk)
        if (hard_reset_end | ~resetn)
            init_seq1_end <= 1'b0;
        else if (in_init_state && !init_rdata[`LCD_BITS_VALID])
            init_seq1_end <= 1'b1;

    wire init_seq2_end = in_init_state & (counter == 25'h1fff);
    wire [31:0] init_data;
    assign init_data = (init_seq2_end) ? {1'b1, 11'b0, `LCD_CMD_INST, 16'h2900} : 
                       (init_seq1_end | ~init_rdata_valid) ? 32'b0 : init_rdata;

    //init image control sequence
    reg [18:0] init2_addr;
    wire [31:0] init2_rdata;
    reg init_img_end;
    reg [31:0] change_addr;

    always @(posedge clk) begin
        if (~resetn)
            init2_addr <= 19'b0;
        else if ((init_seq2_end || init2_addr) && ~init_img_end)
            init2_addr <= init2_addr + 1;
        else if(game_start)begin
            init2_addr <= change_addr;
        end
        
        if (~resetn)
            init_img_end <= 1'b0;
        else if (~init2_rdata[`LCD_BITS_VALID])
            init_img_end <= 1'b1;
    end

    init_img_rom1 init_image_module(
            .clka  (clk),
            .addra (init2_addr),
            .douta (init2_rdata),
            .ena   (1'b1)
        );


    always @(posedge clk) begin
        if(~resetn)begin
            change_addr <= 0;
        end
        else if(game_start)begin
            change_addr <= change_addr + 1;
        end
    end
    
    
    wire [31:0] change_rdata;
    wire change_end;
    wire [4:0] inst_data_num;
    wire [31:0] inst_num;
    assign inst_num = {27'b0,inst_data_num};

    reg [31:0] timer_count;
    always @(posedge clk) begin
        if(~resetn)begin
            timer_count <= 0;
        end
        else begin
            if(timer_count == `ONE_SECOND)begin
                timer_count <= 0;
            end
            else begin
                timer_count <= timer_count + 1;
            end
        end
    end

    wire img_updata;
    assign img_updata = timer_count == `ONE_SECOND;

    always @(posedge clk) begin
        if(~resetn)begin
            game_start <= 0;
        end
        else if( |btn_pressed )begin
            game_start <= 1;
        end
    end

    // reg dir_num_add_en;
    // always @(posedge clk) begin
    //     if(~resetn)begin
    //         dir_num_add_en <= 1;
    //     end
    //     else if(img_updata)begin
    //         dir_num_add_en <= 1;
    //     end
    //     else if( |btn_pressed)begin
    //         dir_num_add_en <= 0;
    //     end
    // end

/*********************************按左边按钮的效果********************************************/
    reg btn0_state;
    reg btn0_pre_state;
    always @(posedge clk) begin
        if(~resetn)begin
            btn0_state <= 0;
        end
        else if(btn_pressed[1])begin
            btn0_state <= 1;
        end
        else if(img_updata)begin
            btn0_state <= 0;
        end
    end
    always @(posedge clk) begin
        if(~resetn)begin
            btn0_pre_state <= 0;
        end
        else begin
            btn0_pre_state <= btn0_state;
        end
    end

    reg [1:0] left_num;

    always @(posedge clk) begin
        if(~resetn)begin
            left_num <= 0;
        end
        else if(btn0_state & ~btn0_pre_state)begin
            left_num <= left_num + 1;
        end
    end
/*********************************************************************************************/

/*********************************按右边按钮的效果********************************************/
    reg btn1_state;
    reg btn1_pre_state;
    always @(posedge clk) begin
        if(~resetn)begin
            btn1_state <= 0;
        end
        else if(btn_pressed[0])begin
            btn1_state <= 1;
        end
        else if(img_updata)begin
            btn1_state <= 0;
        end
    end
    always @(posedge clk) begin
        if(~resetn)begin
            btn1_pre_state <= 0;
        end
        else begin
            btn1_pre_state <= btn1_state;
        end
    end

    reg [1:0] right_num;

    always @(posedge clk) begin
        if(~resetn)begin
            right_num <= 0;
        end
        else if(btn1_state & ~btn1_pre_state)begin
            right_num <= right_num + 1;
        end
    end
/***********************************************************************************************/

/**************************************方向生成*************************************************/
reg [1:0] directions;
always @(posedge clk) begin
    if(~resetn)begin
        directions <= 0;
    end
    else if(left_num > right_num)begin
        case (left_num - right_num)
            1   :   directions <= `LEFT;
            2   :   directions <= `DOWN;
            3   :   directions <= `RIGHT;
            default: directions <= `UP;
        endcase
    end
    else if(right_num > left_num)begin
        case (right_num - left_num)
            1   :   directions <= `RIGHT;
            2   :   directions <= `DOWN;
            3   :   directions <= `LEFT;
            default: directions <= `UP;
        endcase
    end
    else begin
        directions <= `UP;
    end
end

/***********************************************************************************************/

    snake_date my_snake(
        .clk        (clk),
        .resetn     (resetn),
        .game_start (game_start),
        .data_updata(img_updata),
        .directions (directions),

        .data       (change_rdata),
        .data_end   (change_end),
        .inst_data_num (inst_data_num)
    );



    reg resetn_latch;
    always @(posedge clk)
        resetn_latch <= resetn;
    wire reset_init = resetn & ~resetn_latch;
    always @(posedge clk)
        if (~resetn || init_seq2_end)
            lcd_state <= `STATE_IDLE;
        else if (reset_init)
            lcd_state <= `STATE_RESET;
        else if (hard_reset_end)
            lcd_state <= `STATE_INIT;

    // lcd output
    assign lcd_confreg_o = {31'b0, in_init_state | ~init_img_end};
    wire [31:0] lcd_out;
    assign lcd_out = (in_init_state) ? init_data : 
                     (~init_img_end) ? init2_rdata :
                     (game_start & ~change_end)      ?  change_rdata :
                     lcd_confreg_i;
    wire valid_o;
    wire [3:0] cmd_o;
    wire [15:0] data_o;
    assign valid_o = lcd_out[`LCD_BITS_VALID];
    assign cmd_o = lcd_out[`LCD_BITS_CMD];
    assign data_o = lcd_out[`LCD_BITS_DATA];
    
    wire is_inst = (cmd_o == `LCD_CMD_INST);
    wire is_data = (cmd_o == `LCD_CMD_DATA);
    
    assign lcd_hw_rst = resetn & ~in_reset_state;
    assign lcd_hw_cs  = 1'b0;
    assign lcd_hw_bl_ctr = 1'b1;
    assign lcd_hw_rs = valid_o & is_data;
    assign lcd_hw_rd = 1'b1;
    assign lcd_hw_data = data_o;
    reg clk_gen0, clk_gen1;
    always @(posedge clk)
        clk_gen0 <= clk_gen1;
    always @(negedge clk)
        if (~resetn)
            clk_gen1 <= 1'b0;
        else
            clk_gen1 <= ~clk_gen1;
    wire mask_gen;
    assign mask_gen = clk_gen0 ^ clk_gen1;
    assign lcd_hw_wr = mask_gen & valid_o;

endmodule
