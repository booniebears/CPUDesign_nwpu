`define INIT_NUM    31
`define PIXEL       10

`define UP      2'b00
`define RIGHT   2'b01
`define DOWN    2'b11
`define LEFT    2'b10

`define INIT_LEN 5

`define BLACK 32'h80020000
`define WHITE 32'h8002ffff
`define RED   32'h8002f800
`define GREEN 32'h800207e0
`define BLUE  32'h8002001f



module snake_date#(
    parameter ROW_WIDTH = 480/`PIXEL ,
    parameter COL_WIDTH = 800/`PIXEL
)
(
    input clk,
    input resetn,
    input game_start,
    input data_updata,
    input [1:0] directions,

    output [31:0] data,
    output data_end,
    output reg [4:0] inst_data_num

);
reg pixel_data[47:0][79:0];


/******************************************初始化指令**************************************************/

// reg [4:0] inst_data_num;
wire inst_is_ok;

wire game_continue;
reg game_over;

assign game_continue = game_start & ~game_over;

always @(posedge clk) begin
    if(~resetn | data_updata)begin
        inst_data_num <= 0;
    end
    else if(game_continue & ~inst_is_ok)begin
        inst_data_num <= inst_data_num + 1;
    end
end

reg [31:0] inst_data;

always @(posedge clk) begin
    if(inst_data_num < `INIT_NUM)begin
        case (inst_data_num)
            0   :  inst_data <= 32'h00000000;
            1   :  inst_data <= 32'h00000000;   
            2   :  inst_data <= 32'h00000000;
            3   :  inst_data <= 32'h00000000;
            4   :  inst_data <= 32'h00000000;
            5   :  inst_data <= 32'h00000000;
            6   :  inst_data <= 32'h00000000;
            7   :  inst_data <= 32'h00000000;
            8   :  inst_data <= 32'h00000000;
            9   :  inst_data <= 32'h00000000;
            10  :  inst_data <= 32'h00000000;
            11  :  inst_data <= 32'h80013600;
            12  :  inst_data <= 32'h80020000;
            13  :  inst_data <= 32'h80012a00;
            14  :  inst_data <= 32'h80020000;
            15  :  inst_data <= 32'h80012a01;
            16  :  inst_data <= 32'h80020000;
            17  :  inst_data <= 32'h80012a02;
            18  :  inst_data <= 32'h80020001;
            19  :  inst_data <= 32'h80012a03;
            20  :  inst_data <= 32'h800200df;
            21  :  inst_data <= 32'h80012b00;
            22  :  inst_data <= 32'h80020000;
            23  :  inst_data <= 32'h80012b01;
            24  :  inst_data <= 32'h80020000;
            25  :  inst_data <= 32'h80012b02;
            26  :  inst_data <= 32'h80020003;
            27  :  inst_data <= 32'h80012b03;
            28  :  inst_data <= 32'h8002001f;
            29  :  inst_data <= 32'h80012c00;
            30  :  inst_data <= 32'h00000000;
            31  :  inst_data <= 32'h00000000;
            default: inst_data <= 32'h0;
        endcase
    end
end

assign inst_is_ok = inst_data_num == `INIT_NUM;

/*************************************************************************************************/


/*********************************************选择当前行********************************************/

// wire row_add_en;
reg [3:0] row_num;
// assign row_add_en = (inst_data_num == `INIT_NUM-1) | inst_is_ok;

always @(posedge clk) begin
    if(~resetn | data_updata)begin
        row_num <= 0;
    end
    else if(inst_is_ok & game_continue)begin
        if(row_num == `PIXEL-1)begin
            row_num <= 0;
        end
        else begin
            row_num <= row_num + 1;
        end
    end
end

wire pixel_row_add_en;
reg [5:0] pixel_row_num;
assign pixel_row_add_en = (row_num == `PIXEL-1) & game_continue;

always @(posedge clk) begin
    if(~resetn | data_updata)begin
        pixel_row_num <= 0;
    end
    else if(pixel_row_add_en)begin
        if(pixel_row_num == 47)begin
            pixel_row_num <= 0;
        end
        else begin
            pixel_row_num <= pixel_row_num + 1;
        end
    end
end

/*************************************************************************************************/



/*********************************************选择当前列******************************************/
wire clo_add_en;
reg [6:0] clo_num;
assign clo_add_en = (pixel_row_num == 47) & pixel_row_add_en & game_continue;

always @(posedge clk) begin
    if(~resetn | data_updata)begin
        clo_num <= 0;
    end
    else if(clo_add_en)begin
        if(clo_num == `PIXEL-1)begin
            clo_num <= 0;
        end
        else begin
            clo_num <= clo_num + 1;
        end
    end
end

wire pixel_clo_add_en;
reg [6:0] pixel_clo_num;
assign pixel_clo_add_en = (clo_num == `PIXEL-1) & clo_add_en & game_continue;

always @(posedge clk) begin
    if(~resetn | data_updata)begin
        pixel_clo_num <= 0;
    end
    else if(pixel_clo_add_en & ~data_end) begin
        pixel_clo_num <= pixel_clo_num + 1;
    end
end

/*************************************************************************************************/



/********************************当前一帧数据是否发送完成*******************************************/
reg data_end_r;
assign data_end = ( (pixel_clo_num == 79) & pixel_clo_add_en & game_continue ) | data_end_r;

always @(posedge clk) begin
    if(~resetn | data_updata)begin
        data_end_r <= 0;
    end
    else begin
        data_end_r <= data_end;        
    end
end
/*************************************************************************************************/


/*******************************************头部移动***********************************************/
reg [5:0] head_row;
always @(posedge clk) begin
    if(~resetn)begin
        head_row <= 24;
    end
    else if(data_updata & game_continue)begin
        if(directions == `UP && head_row < 47)begin
            head_row <= head_row + 1;
        end
        else if(directions == `DOWN && head_row > 0)begin
            head_row <= head_row - 1;
        end
    end
end

reg [6:0] head_col;
always @(posedge clk) begin
    if(~resetn)begin
        head_col <= 40;
    end
    else if(data_updata & game_continue)begin
        if(directions == `LEFT && head_col > 0)begin
            head_col <= head_col - 1;
        end
        else if(directions == `RIGHT && head_col < 79)begin
            head_col <= head_col + 1;
        end
    end
end
/*************************************************************************************************/

reg dead_judge;
always @(posedge clk) begin
    if(~resetn)begin
        dead_judge <= 0;
    end
    else if(data_updata & game_continue)begin
        dead_judge <= 1;
    end
    else begin
        dead_judge <= 0;
    end
end


always @(posedge clk) begin
    if(~resetn)begin
        game_over <= 0;
    end
    else if(dead_judge)begin
        if(pixel_data[head_row][head_col])begin
            game_over <= 1;
        end
    end
end




/****************************************移动轨迹记录*********************************************/
reg end_move_en;
reg [1:0] head_movd_record [63:0];
reg [5:0] len;

integer i;
always @(posedge clk) begin
    if(~resetn)begin
        for(i = 0;i<1000;i = i+1)begin
            head_movd_record[i] <= 0;
        end
    end
    else if(~end_move_en & data_updata)begin
        head_movd_record[len] <= directions;
    end
    else if(end_move_en & data_updata)begin
        for(i = 0;i<len-1;i = i+1)begin
            head_movd_record[i] <= head_movd_record[i + 1];
        end
        head_movd_record[len-1] <= directions;
    end
end

reg len_add_stage;
reg len_add_stage_pre;
reg being_eaten;

always @(posedge clk) begin
    if(~resetn)begin
        len_add_stage <= 0;
    end
    else if(data_updata)begin
        len_add_stage <= 0;
    end
    else if(being_eaten)begin
        len_add_stage <= 1;
    end
end

// always @(posedge clk) begin
//     if(~resetn)begin
//         len_add_stage_pre <= 0;
//     end
//     else begin
//         len_add_stage_pre <= len_add_stage;
//     end
// end

// reg len_add_en;
// always @(posedge clk) begin
//     if(~resetn)begin
//         len_add_en <= 0;
//     end
//     else if(len_add_stage & ~len_add_stage_pre)begin
//         len_add_en <= 1;
//     end
//     else if (data_updata)begin
//         len_add_en <= 0;
//     end
// end

always @(posedge clk) begin
    if(~resetn)begin
        len <= 0;
    end
    else if(data_updata & len_add_stage)begin
        len <= len + 1;
    end
    else if(data_updata & game_continue)begin
        if(len < `INIT_LEN)begin
            len <= len + 1;            
        end
    end
end
/*************************************************************************************************/


/**************************************尾部运动***********************************************/

always @(posedge clk) begin
    if(~resetn)begin
        end_move_en <= 0; 
    end
    else if(being_eaten)begin
        end_move_en <= 0;
    end
    else if(len > `INIT_LEN-1)begin
        end_move_en <= 1;
    end
end

reg [5:0] end_row;
always @(posedge clk) begin
    if(~resetn)begin
        end_row <= 24;
    end
    else if(data_updata & game_continue & end_move_en)begin
        if(head_movd_record[0] == `UP && end_row < 47)begin
            end_row <= end_row + 1;
        end
        else if(head_movd_record[0] == `DOWN && end_row > 0)begin
            end_row <= end_row - 1;
        end
    end
end

reg [6:0] end_col;
always @(posedge clk) begin
    if(~resetn)begin
        end_col <= 40;
    end
    else if(data_updata & game_continue & end_move_en)begin
        if(head_movd_record[0] == `LEFT && end_col > 0)begin
            end_col <= end_col - 1;
        end
        else if(head_movd_record[0] == `RIGHT && end_col < 79)begin
            end_col <= end_col + 1;
        end
    end
end

/***********************************************************************************************/

/***********************************苹果生成**************************************************/

reg [10:0] random_time;
always @(posedge clk) begin
    if(~resetn)begin
        random_time <= 0;
    end
    else begin
        random_time <= random_time + 1;
    end
end


// reg apple_need;
// always @(posedge clk) begin
//     if(~resetn)begin
//         apple_need <= 1;
//     end
//     else if(game_continue  & ~apple_exist)begin
//         apple_need <= 0;
//     end
// end

reg apple_exist;
reg apple_update;


always @(posedge clk) begin
    if(~resetn)begin
        apple_exist <= 0;
    end
    else if(apple_update)begin
        apple_exist <= 1;
    end
    else if(being_eaten)begin
        apple_exist <= 0;
    end
end

always @(posedge clk) begin
    if(~resetn)begin
        apple_update <= 0;
    end
    else if(game_continue & ~apple_exist)begin
        apple_update <= 1; 
    end
    else if(game_continue & apple_exist)begin
        apple_update <= 0;
    end
end

wire [5:0] row_random_time;
wire [6:0] col_random_time;
wire [5:0] row_random;
wire [6:0] col_random;

assign {row_random_time, col_random_time} = random_time;
assign row_random = ( row_random_time == 0 | row_random_time == 48 )    ?   1                       :
                    ( row_random_time == 47)                            ?   46                      :
                    ( row_random_time >  47)                            ?   row_random_time - 48    : row_random_time;

assign col_random = ( col_random_time == 0 | col_random_time == 80 )    ?   1                       :
                    ( col_random_time == 79)                            ?   78                      :
                    ( col_random_time >  79)                            ?   col_random_time - 80    : col_random_time;

reg [5:0] apple_row;
reg [6:0] apple_col;

always @(posedge clk) begin
    if(~resetn)begin
        apple_row <= 0;
    end
    else if(apple_update)begin
        apple_row <= row_random;
    end
end

always @(posedge clk) begin
    if(~resetn)begin
        apple_col <= 0;
    end
    else if(apple_update)begin
        apple_col <= col_random;
    end
end

wire apple_can_eat;
assign apple_can_eat = (apple_row == head_row) && (apple_col == head_col);

always @(posedge clk) begin
    if(~resetn)begin
        being_eaten <= 0;
    end
    else if(apple_can_eat)begin
        being_eaten <= 1;
    end
    else if(data_updata)begin
        being_eaten <= 0;
    end
end

/********************************************************************************************/

/********************************初始化背景 && 更新图形**************************************/


integer row;
integer col;
integer row1;
integer col1;

always @(posedge clk) begin

    // if(~resetn)begin
    //     for(row = 0; row < 48; row = row + 2)begin
    //         for(col = 0; col < 80; col = col + 2)begin
    //             pixel_data[row][col] <= 0;
    //         end

    //         for(col = 1; col < 80; col = col + 2)begin
    //             pixel_data[row][col] <= 1;
    //         end
    //     end

    //     for(row1 = 1; row1 < 48; row1 = row1 + 2)begin
    //         for(col1 = 0; col1 < 80; col1 = col1 + 2)begin
    //             pixel_data[row1][col1] <= 1;
    //         end

    //         for(col1 = 1; col1 < 80; col1 = col1 + 2)begin
    //             pixel_data[row1][col1] <= 0;
    //         end
    //     end

    // end // blank and white

    // if(~resetn)begin
    //     for(row = 0; row < 48; row = row + 1)begin
    //         for(col = 0; col < 80; col = col + 1)begin
    //             pixel_data[row][col] <= 0;
    //         end
    //     end
    // end

    if(~resetn)begin
        for(row = 0;row < 48;row = row + 1)begin        
            pixel_data[row][ 0] <= 1;
            pixel_data[row][79] <= 1;
        end

        for(col = 1;col < 79;col = col + 1)begin
            pixel_data[ 0][col] <= 1;
            pixel_data[47][col] <= 1;
        end

        for(row = 1; row < 47; row = row + 1)begin
            for(col = 1; col < 79; col = col + 1)begin
                pixel_data[row][col] <= 0;
            end
        end
    end
    else begin
        pixel_data[head_row][head_col] <= 1;
        if(end_move_en)begin
            pixel_data[end_row][end_col] <= 0;
        end
    end

end

/************************************************************************************/

wire is_wall;
assign is_wall = (pixel_row_num == 0) || (pixel_row_num == 47) || (pixel_clo_num == 0) || (pixel_clo_num == 79);

wire is_head;
assign is_head = (pixel_row_num == head_row) && (pixel_clo_num == head_col);

wire is_apple;
assign is_apple = apple_exist && apple_col == pixel_clo_num && apple_row == pixel_row_num; 


assign data =   (~inst_is_ok                             )              ? inst_data     :
                is_wall                                                 ? `BLUE         :
                is_head                                                 ? `GREEN        :
                is_apple                                                ? `RED          :
                (pixel_data[pixel_row_num][pixel_clo_num])              ? 32'h8002ffff  :   32'h80020000  ;


ila_for_snake snake_ila(
        .clk        (clk),
        .probe0     (game_continue),
        .probe1     (data_updata),
        .probe2     (pixel_data[0][0]),
        .probe3     (pixel_data[pixel_row_num][pixel_clo_num]),
        .probe4     (inst_data_num),
        .probe5     (row_num),
        .probe6     (pixel_row_num),
        .probe7     (clo_num),
        .probe8     (pixel_clo_num),
        .probe9     (data)
    );


endmodule