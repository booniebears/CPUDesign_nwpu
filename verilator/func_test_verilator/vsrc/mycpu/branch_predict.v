// BHT存放着所有PC值对应的两位饱和计数器的值
// BHT大小为512B， 从PC中取11位来寻址
// 在流水线的执行阶段，当分支指令的方向被实际计算出来时，更新BHT


module branch_predictor(
    input clk,
    input resetn,
    input [7:0] index,
    input [7:0] EX_index,
    input EX_taken,

    output branch
);

    /* counter:
        00:     strongly not taken
        01:     weakly not taken
        10:     weakly taken
        11:     strongly taken
    */

    reg [1:0] counter[255:0];
    reg [1:0] counter_next;
    parameter SNT = 2'b00, WNT = 2'b01, WT = 2'b10, ST = 2'b11;

    integer k;
    always @(posedge clk) begin
        if (!resetn) begin
            for (k = 0; k < 256; k = k + 1)
                counter[k] = SNT;
        end
        else
            counter[EX_index] <= counter_next;
    end

    always @(*) begin
        case (counter[EX_index])
            SNT: 
            if (EX_taken)
                counter_next = WNT;
            else
                counter_next = SNT;
            WNT:
            if (EX_taken)
                counter_next = WT;
            else
                counter_next = SNT;
            WT:
            if (EX_taken)
                counter_next = ST;
            else
                counter_next = WNT;
            default: 
            if (EX_taken)
                counter_next = ST;
            else
                counter_next = WT;
        endcase
    end

    assign branch = counter[index][1];

endmodule


//1路直接映射cache
module branch_target_predictor (
    input clk,
    input resetn,
    input [4:0] index,
    input [24:0] tag,
    input [4:0] EX_index,
    input [24:0] EX_tag,
    input [1:0] EX_BrType,                                  //BrType为11时表示该指令为call指令（JAL）
    input [31:0] EX_address,                                //BrType为10时表示该指令为其他直接跳转指令
    input EX_taken,
                                                            //BrType为01时表示该指令为return指令（JR）
    output reg [31:0] target_address                        //BrType为00时表示该指令不是分支指令或者是JALR
);

    reg validBuffer[31:0];
    reg [24:0] tagBuffer[31:0];
    reg [31:0] addressBuffer[31:0];
    reg [1:0] BrTypeBuffer[31:0];
    reg [31:0] RAS[15:0];                                     //return address stack;
    reg [3:0] stackPointer;
    reg BTBWr;
    reg RASWr;

    reg validBuffer_temp;
    reg [24:0] tagBuffer_temp;
    reg [31:0] addressBuffer_temp;
    reg [1:0] BrTypeBuffer_temp;
    reg [31:0] RAS_temp;                        
    reg [3:0] stackPointer_temp;

    wire valid;
    wire hit;
    wire [1:0] BrType;
    wire [31:0] PC_add_8;
    wire [31:0] EX_PC_add_8;
    wire [3:0] stackPointer_sub1 = stackPointer - 1;

    //read from BTB
    assign valid = validBuffer[index];
    assign hit = valid && (tagBuffer[index] == tag);
    assign BrType = BrTypeBuffer[index];
    assign PC_add_8 = {tag, index, 2'b00} + 8;
    assign EX_PC_add_8 = {EX_tag, EX_index, 2'b00} + 8;

    always @(*) begin
        case (BrType)
            2'b11, 2'b10:   if (hit)
                                target_address = addressBuffer[index];
                            else
                                target_address =  PC_add_8;
            2'b01:  if (hit)
                        target_address = RAS[stackPointer_sub1];
                    else
                        target_address = PC_add_8;
            default: target_address = PC_add_8;
        endcase
    end

    //write to BTB_temp and RAS_temp
    //只有EX级的指令为直接跳转指令或JR（return指令）时才更新BTB
    //EX级指令为call时，将该指令的PC值+8存到RAS，且将栈指针+1
    //EX级指令为return时，将栈指针-1
    //栈满时，最先进栈的指令离开
    always @(*) begin
        if (EX_taken) begin
            case (EX_BrType)
                2'b11:  begin
                    BTBWr = 1'b1;
                    RASWr = 1'b1;
                    validBuffer_temp = 1'b1;
                    tagBuffer_temp = EX_tag;
                    addressBuffer_temp = EX_address;
                    BrTypeBuffer_temp = EX_BrType;
                    RAS_temp = EX_PC_add_8;
                    stackPointer_temp = stackPointer + 1;
                end
                2'b10:  begin
                    BTBWr = 1'b1;
                    RASWr = 1'b0;
                    validBuffer_temp = 1'b1;
                    tagBuffer_temp = EX_tag;
                    addressBuffer_temp = EX_address;
                    BrTypeBuffer_temp = EX_BrType;
                    RAS_temp = 32'd0;
                    stackPointer_temp = 4'd0;
                end
                2'b01: begin
                    BTBWr = 1'b1;
                    RASWr = 1'b1;
                    validBuffer_temp = 1'b1;
                    tagBuffer_temp = EX_tag;
                    addressBuffer_temp = 32'd0;
                    BrTypeBuffer_temp = EX_BrType;
                    RAS_temp = 32'd0;
                    stackPointer_temp = stackPointer - 1;
                end
                default: begin
                    BTBWr = 1'b0;
                    RASWr = 1'b0;
                    validBuffer_temp = 1'b0;
                    tagBuffer_temp = 25'd0;
                    addressBuffer_temp = 32'd0;
                    BrTypeBuffer_temp = 2'b00;
                    RAS_temp = 32'd0;
                    stackPointer_temp = 4'd0;
                end
            endcase
        end
        else begin
            BTBWr = 1'b0;
            RASWr = 1'b0;
            validBuffer_temp = 1'b0;
            tagBuffer_temp = 25'd0;
            addressBuffer_temp = 32'd0;
            BrTypeBuffer_temp = 2'b00;
            RAS_temp = 32'd0;
            stackPointer_temp = 4'd0;
        end

    end
    
    //write to BTB
    integer k;
    always @(posedge clk) begin
        if (!resetn)
            for (k = 0; k < 32; k = k + 1) begin
                validBuffer[k] <= 1'b0;
                tagBuffer[k] <= 25'd0;
                addressBuffer[k] <= 32'd0;
                BrTypeBuffer[k] <= 2'b00;
            end
        else if (BTBWr) begin
            validBuffer[EX_index] <= validBuffer_temp;
            tagBuffer[EX_index] <= tagBuffer_temp;
            addressBuffer[EX_index] <= addressBuffer_temp;
            BrTypeBuffer[EX_index] <= BrTypeBuffer_temp;
        end
    end

    //write to RAS
    integer i;
    always @(posedge clk) begin
        if (!resetn) begin
            for (i = 0; i < 16; i = i + 1)
                RAS[i] <= 32'd0;
            stackPointer <= 4'd0;
        end
        else if (RASWr) begin
            RAS[stackPointer] <= RAS_temp;
            stackPointer <= stackPointer_temp;
        end
    end


endmodule
