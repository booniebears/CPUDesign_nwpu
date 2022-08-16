module vga_display_pic (
    input			wire					clk,      
    input			wire					rst_n,    
    input			wire	[ 11:0 ]		rgb_data, 
    output			wire					vga_clk,  
    output			reg						h_sync,   
    output			reg						v_sync,   
    output			reg		[ 11:0 ]		addr_h,   
    output			reg		[ 11:0 ]		addr_v,   
    output			wire	[ 3:0 ]		    rgb_r,    
    output			wire	[ 3:0 ]			rgb_g,    
    output			wire	[ 3:0 ]			rgb_b     
);

// 800 * 600 72HZ
localparam	 H_FRONT = 56; 
localparam	 H_SYNC  = 120;
localparam	 H_BLACK = 64; 
localparam	 H_ACT   = 800;
localparam	 V_FRONT = 37; 
localparam	 V_SYNC  = 6; 
localparam	 V_BLACK = 23; 
localparam	 V_ACT   = 600; 
localparam	H_TOTAL = H_FRONT + H_SYNC + H_BLACK + H_ACT; 
localparam	V_TOTAL = V_FRONT + V_SYNC + V_BLACK + V_ACT; 

reg	[ 11:0 ]	cnt_h ; 
reg	[ 11:0 ]	cnt_v ; 
reg	[ 11:0 ]	rgb	  ; 
wire		flag_enable_cnt_h			;
wire		flag_clear_cnt_h			;
wire		flag_enable_cnt_v			;
wire		flag_clear_cnt_v			;
wire		flag_add_cnt_v  			;
wire		valid_area      			;

reg R_clk_50M;
always @(posedge clk or negedge rst_n)
begin
	 if(!rst_n)
		  R_clk_50M   <=  1'b0;
	 else
		  R_clk_50M   <=  ~R_clk_50M;     
end
assign vga_clk = R_clk_50M;



// 行计数
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        cnt_h <= 0;
    end
    else if ( flag_enable_cnt_h ) begin
        if ( flag_clear_cnt_h ) begin
            cnt_h <= 0;
        end
        else begin
            cnt_h <= cnt_h + 1;
        end
    end
    else begin
        cnt_h <= 0;
    end
end
assign flag_enable_cnt_h = 1;
assign flag_clear_cnt_h  = cnt_h == H_TOTAL - 1;

// 行同步信号
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        h_sync <= 0;
    end
    else if ( cnt_h == H_SYNC - 1 ) begin // 同步周期时为1
        h_sync <= 1;
    end
        else if ( flag_clear_cnt_h ) begin // 其余为0
        h_sync <= 0;
        end
    else begin
        h_sync <= h_sync;
    end
end



// 场计数
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        cnt_v <= 0;
    end
    else if ( flag_enable_cnt_v ) begin
        if ( flag_clear_cnt_v ) begin
            cnt_v <= 0;
        end
        else if ( flag_add_cnt_v ) begin
            cnt_v <= cnt_v + 1;
        end
        else begin
            cnt_v <= cnt_v;
        end
    end
    else begin
        cnt_v <= 0;
    end
end
assign flag_enable_cnt_v = flag_enable_cnt_h;
assign flag_clear_cnt_v  = cnt_v == V_TOTAL - 1;
assign flag_add_cnt_v    = flag_clear_cnt_h;

// 场同步信号
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        v_sync <= 0;
    end
    else if ( cnt_v == V_SYNC - 1 ) begin
        v_sync <= 1;
    end
        else if ( flag_clear_cnt_v ) begin
        v_sync <= 0;
        end
    else begin
        v_sync <= v_sync;
    end
end


// 对应有效区域行地址 
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        addr_h <= 0;
    end
    else if ( valid_area ) begin
        addr_h <= cnt_h - H_SYNC - H_BLACK + 1;
    end
    else begin
        addr_h <= 0;
    end
end
// 对应有效区域列地址 
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        addr_v <= 0;
    end
    else if ( valid_area ) begin
        addr_v <= cnt_v -V_SYNC - V_BLACK + 1;
    end
    else begin
        addr_v <= 0;
    end
end
// 有效显示区域
assign valid_area = cnt_h >= H_SYNC + H_BLACK && cnt_h <= H_SYNC + H_BLACK + H_ACT && cnt_v >= V_SYNC + V_BLACK && cnt_v <= V_SYNC + V_BLACK + V_ACT;


// 显示颜色
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        rgb <= 12'h0;
    end
    else if ( valid_area ) begin
        rgb <= rgb_data;
    end
    else begin
        rgb <= 12'b0;
    end
end
assign rgb_r = rgb[ 11:8 ];
assign rgb_g = rgb[ 7:4 ];
assign rgb_b = rgb[ 3:0 ];

endmodule



