//Orz好像我其实没写什么...
module cache(
input clk_g,//时钟信号
input resetn,//复位信号
//cpu<->cache
input valid,               //表明请求有效
input op,                  //1:WRITE 0:READ
input [7:0]index,          //地址的index域[11:4]
input [19:0]tag,
input [3:0]offset,
//二路组相联 每组4KB 行大小16字节
//-----------------------------------
//[31:12]Tag|[11:4]Index|[3:0]offset|
//-----------------------------------
input [3:0]wstrb,
input [31:0]wdata,
output reg addr_ok,
output reg data_ok,
output reg [31:0]rdata,
//cache<->AXI
output reg rd_req,
output reg [2:0]rd_type,
output reg [31:0]rd_addr,
input rd_rdy,
input ret_valid,
input [1:0]ret_last,//这个是两位就很迷惑
input [31:0]ret_data,
output reg wr_req,
output reg [2:0]wr_type,
output reg [31:0]wr_addr,
output reg [3:0]wr_wstrb,
output reg [127:0]wr_data,
input wr_rdy
);
//FSM Define
parameter IDLE=0;
parameter LOOKUP=1;
parameter MISS=2;
parameter REPLACE=3;
parameter REFILL=4;

parameter W_IDLE=0;
parameter W_WRITE=1;

reg newrequest;
reg [2:0]state,next_state;             //定义状态机状态
//呜呜呜IP核到底该怎么用啊
reg [255:0] cache_data [0:31];         //32位Cache



always@(posedge clk_g,posedge resetn)
begin
    if(resetn)
    state<=IDLE;
    else
    state<=next_state;
end


reg hit =1'b0;
always@(*)
case(state)
    IDLE:if(valid)
            next_state=LOOKUP;
            //TODO:与Hit Write冲突而无法接收
         else
            next_state=IDLE;
    LOOKUP:begin
        if (hit) begin
            if (newrequest) begin//可能需要调换一下逻辑
                next_state = LOOKUP;
            end
            else begin //TODO:与Hit Write冲突而无法接收
                next_state = IDLE;
            end
        end
        else begin
            next_state = MISS;
        end
    end
    MISS:begin
        if (wr_rdy == 1'b0) begin//等待写MEM请求的握手信号
            next_state = MISS;
        end
        else begin
            next_state = REPLACE;
        end
    end
    REPLACE:begin
        if(rd_rdy == 1'b0)begin
            //wr_req 当都写这个逻辑 
        end
        else begin
            next_state = REFILL;
        end
    end
    REFILL:begin
        if (ret_valid == 1 && ret_last == 1) begin//TODO:所以这个地方ret_last是有问题的
            next_state = IDLE;
        end
        else begin
            next_state = REFILL;
        end
    end
    default:next_state=IDLE;
endcase

always @(*) begin
    if(state == LOOKUP)begin
        
    end
end

endmodule
