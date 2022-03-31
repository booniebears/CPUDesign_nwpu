//利用自带的乘除，取余运算进行运算，同时包含lo和hi寄存器
module md(Clk,rs,rt,md_control,updatemd,start_mult,start_div,busy,hi,lo);
    input Clk,start_mult,start_div,updatemd;
    input [31:0] rs,rt;
    input [2:0]md_control;
    output reg[3:0] busy;
    output reg [31:0]hi,lo;

    wire [63:0] res_mult,res_multu;
    wire [31:0] res_mult_hi,res_mult_lo;
    wire [31:0] res_multu_hi,res_multu_lo;
    wire [31:0] res_div_q,res_div_r,res_divu_q,res_divu_r;
    wire [31:0] res_hi,res_lo;
    
    //reg [31:0] hi,lo;
    
    assign res_mult = $signed(rs) * $signed(rt);
    assign res_mult_hi = res_mult[63:32];
    assign res_mult_lo = res_mult[31:0];
    assign res_multu = rs * rt;
    assign res_multu_hi = res_multu[63:32];
    assign res_multu_lo = res_multu[31:0];
    assign res_div_q = $signed(rs) / $signed(rt);
    assign res_div_r = $signed(rs) % $signed(rt);
    assign res_divu_q = rs / rt;
    assign res_divu_r = rs % rt;

    assign res_hi = (~md_control[2]&~md_control[1]&~md_control[0])?res_mult_hi:((~md_control[2]&~md_control[1]&md_control[0])?res_multu_hi:((~md_control[2]&md_control[1]&~md_control[0])?res_div_r:((~md_control[2]&md_control[1]&md_control[0])?res_divu_r:rs)));
    assign res_lo = (~md_control[2]&~md_control[1]&~md_control[0])?res_mult_lo:((~md_control[2]&~md_control[1]&md_control[0])?res_multu_lo:((~md_control[2]&md_control[1]&~md_control[0])?res_div_q:((~md_control[2]&md_control[1]&md_control[0])?res_divu_q:rs)));
    //assign res_rd = res_mult[31:0];
    
    initial begin
        busy = 0;
    end
    /*
    always@(posedge Clk)begin
        if(start_mult ==1&&busy==0)begin
            busy = 4'b0101;
        end
        if(start_div == 1&&busy==0)begin
            busy = 4'b1010;
        end
        if(busy!=0)begin
            busy = busy-1;
        end
    end
    */
    
    always@(res_hi or res_lo)begin
        if((~md_control[2]&~md_control[1]&~md_control[0])&&updatemd==1)begin//mult
            hi = res_hi;
        end
        else if((~md_control[2]&~md_control[1]&md_control[0])&&updatemd==1)begin//multu
            hi = res_hi;
        end
        else if ((~md_control[2]&md_control[1]&~md_control[0])&&updatemd==1)begin//div
            hi = res_hi;
        end
        else if ((~md_control[2]&md_control[1]&md_control[0])&&updatemd==1)begin//divu
            hi = res_hi;
        end
        else if ((md_control[2]&~md_control[1]&~md_control[0])&&updatemd==1)begin//mthi
            hi = res_hi;
        end
        
        if((~md_control[2]&~md_control[1]&~md_control[0])&&updatemd==1)begin//mult
            lo = res_lo;
        end
        else if((~md_control[2]&~md_control[1]&md_control[0])&&updatemd==1)begin//multu
            lo = res_lo;
        end
        else if ((~md_control[2]&md_control[1]&~md_control[0])&&updatemd==1)begin//div
            lo = res_lo;
        end
        else if ((~md_control[2]&md_control[1]&md_control[0])&&updatemd==1)begin//divu
            lo = res_lo;
        end
        else if ((md_control[2]&~md_control[1]&md_control[0])&&updatemd==1)begin//mtlo
            lo = res_lo;
        end
    end
    
endmodule
