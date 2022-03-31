//这个模块的作用就是用来在ID阶段判断是否需要跳转
//对于bne，beq这样的指令我们就要判断是是否相等
//对于和0比较大小从而决定是否跳转的指令
//我们同样在这个模块去决定

module if_c_adventure(A,B,Op,usigned,c_adventure);
    input [31:0] A,B;
    input [3:0] Op;
    input usigned;
    output c_adventure;

    wire less_res,less_v_res;
    wire unsigned_less_res,unsigned_less_v_res;
    wire less_equal_res;
    wire greater_equal_res;
    wire greater_res;
    wire eq_res;
    
	assign less_v_res = ($signed(A)<$signed(B)) ? 1:0;
	assign unsigned_less_v_res = A<B ? 1:0;
    assign less_res = $signed(A)<0 ? 1:0;
	//assign unsigned_less_res = A<0 ? 1:0;    
	assign less_equal_res = $signed(A)<=0 ? 1:0;
	assign greater_equal_res = $signed(A)>=0 ? 1:0;
	assign greater_res = $signed(A)>0 ? 1:0;
	assign eq_res = A==B?1:0;
	
	assign c_adventure = (~Op[3]&&~Op[2]&&~Op[1])?eq_res:(Op[2]==0 && Op[1]==0 && Op[0]==1) ? (usigned==1 ? unsigned_less_v_res: less_v_res):(Op[2]==1 ? (Op[0]==1 ? greater_equal_res : less_res):(Op[0]==1 ? greater_res : less_equal_res)); 	

endmodule

