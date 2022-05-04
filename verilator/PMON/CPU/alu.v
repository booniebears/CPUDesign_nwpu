module alu1(
	A, B, ALU1Op, ALU1Sel, Shamt,

	C,Overflow,Trap
	);
	input [31:0]    A;
    input [31:0]    B;
	input [4:0]     ALU1Op;
	input [4:0]     Shamt;
	input           ALU1Sel;

	output reg       Overflow;
	output reg [31:0]C;
    output reg       Trap;

	wire [4:0]      temp;
	wire            Less;
    wire            Trap_Equal;
    wire            Trap_Less;
	reg [5:0]       CLO_RESULT;
	reg [5:0]       CLZ_RESULT;

	assign temp = ALU1Sel ? Shamt : A[4:0];
	assign Less = ((ALU1Op == 5'b01001) && A[31]^B[31]) ? ~(A < B) : (A < B);
    
    /*for trap instruction*/
    assign Trap_Equal = A == B;
    assign Trap_Less =
    ( (ALU1Op == 5'b10010 || ALU1Op == 5'b10100) && A[31]^B[31]) ? ~(A < B) : (A < B);//signed/unsigned compare

	always@(A, B, ALU1Op, Less, temp, CLO_RESULT, CLZ_RESULT)
		case(ALU1Op)
			5'b00000:	C = A + B;			//add
			5'b00001:	C = A - B;			//sub
			5'b00010:	C = A | B;			//or
			5'b00011:	C = A & B;			//and
			5'b00100:	C = ~( A | B );		//nor
			5'b00101:	C = A ^ B;			//xor
			5'b00110:	C = B << temp;		//logical left shift
			5'b00111:	C = B >> temp;		//logical right shift
			5'b01000:	C = $signed(B) >>> temp;//arithmetical right shift
            5'b01100:   C = A + B;			//addui addu
			5'b01011:	C = A;				//movn, movz
			5'b01101:	C = {26'd0,CLO_RESULT};//clo
			5'b01110:	C = {26'd0,CLZ_RESULT};//clz
            5'b10000:   C = A - B;			//subu
			default:	C = {31'h00000000,Less};//	signed/unsigned compare
		endcase

	always@(A,B,C,ALU1Op)
		if(ALU1Op == 5'b00000) begin
			if(A[31] == 1'b1 && B[31] == 1'b1 && C[31] == 1'b0)
				Overflow = 1'b1;
			else if(A[31] == 1'b0 && B[31] == 1'b0 && C[31] == 1'b1)
				Overflow = 1'b1;
			else
				Overflow = 1'b0;
		end
		else if(ALU1Op == 5'b00001) begin
			if(A[31] == 1'b1 && B[31] == 1'b0 && C[31] == 1'b0)
				Overflow = 1'b1;
			else if(A[31] == 1'b0 && B[31] == 1'b1 && C[31] == 1'b1)
				Overflow = 1'b1;
			else
				Overflow = 1'b0;
		end
		else
			Overflow = 1'b0;

    always @(Trap_Equal,Trap_Less,ALU1Op) begin
        case (ALU1Op)
            5'b10001://teq,teqi
                if (Trap_Equal)
                    Trap <= 1'b1;
                else
                    Trap <= 1'b0;
            5'b10010,5'b10011://tge,tgei,tgeu,tgeiu
                if (~Trap_Less)
                    Trap <= 1'b1;
                else
                    Trap <= 1'b0;
            5'b10100,5'b10101://tlt,tlti,tltu,tltiu
                if (Trap_Less)
                    Trap <= 1'b1;
                else
                    Trap <= 1'b0;
            5'b10110://tne,tnei
                if (~Trap_Equal)
                    Trap <= 1'b1;
                else
                    Trap <= 1'b0;

            default:Trap <= 1'b0;
        endcase
    end

    always@(A) begin
        casex (A)
            32'b0xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd0;
            32'b10xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd1;
            32'b110xxxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd2;
            32'b1110xxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd3;
            32'b11110xxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd4;
            32'b111110xxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd5;
            32'b1111110xxxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd6;
            32'b11111110xxxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd7;
            32'b111111110xxxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd8;
            32'b1111111110xxxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd9;
            32'b11111111110xxxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd10;
            32'b111111111110xxxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd11;
            32'b1111111111110xxxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd12;
            32'b11111111111110xxxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd13;
            32'b111111111111110xxxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd14;
            32'b1111111111111110xxxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd15;
            32'b11111111111111110xxxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd16;
            32'b111111111111111110xxxxxxxxxxxxxx:
                CLO_RESULT <= 6'd17;
            32'b1111111111111111110xxxxxxxxxxxxx:
                CLO_RESULT <= 6'd18;
            32'b11111111111111111110xxxxxxxxxxxx:
                CLO_RESULT <= 6'd19;
            32'b111111111111111111110xxxxxxxxxxx:
                CLO_RESULT <= 6'd20;
            32'b1111111111111111111110xxxxxxxxxx:
                CLO_RESULT <= 6'd21;
            32'b11111111111111111111110xxxxxxxxx:
                CLO_RESULT <= 6'd22;
            32'b111111111111111111111110xxxxxxxx:
                CLO_RESULT <= 6'd23;
            32'b1111111111111111111111110xxxxxxx:
                CLO_RESULT <= 6'd24;
            32'b11111111111111111111111110xxxxxx:
                CLO_RESULT <= 6'd25;
            32'b111111111111111111111111110xxxxx:
                CLO_RESULT <= 6'd26;
            32'b1111111111111111111111111110xxxx:
                CLO_RESULT <= 6'd27;
            32'b11111111111111111111111111110xxx:
                CLO_RESULT <= 6'd28;
            32'b111111111111111111111111111110xx:
                CLO_RESULT <= 6'd29;
            32'b1111111111111111111111111111110x:
                CLO_RESULT <= 6'd30;
            32'b11111111111111111111111111111110:
                CLO_RESULT <= 6'd31;
            32'b11111111111111111111111111111111:
                CLO_RESULT <= 6'd32;
            default:
                CLO_RESULT <= 6'd0;
        endcase
    end

    always@(A) begin
        casex (A)
            32'b1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd0;
            32'b01xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd1;
            32'b001xxxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd2;
            32'b0001xxxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd3;
            32'b00001xxxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd4;
            32'b000001xxxxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd5;
            32'b0000001xxxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd6;
            32'b00000001xxxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd7;
            32'b000000001xxxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd8;
            32'b0000000001xxxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd9;
            32'b00000000001xxxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd10;
            32'b000000000001xxxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd11;
            32'b0000000000001xxxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd12;
            32'b00000000000001xxxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd13;
            32'b000000000000001xxxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd14;
            32'b0000000000000001xxxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd15;
            32'b00000000000000001xxxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd16;
            32'b000000000000000001xxxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd17;
            32'b0000000000000000001xxxxxxxxxxxxx:
                CLZ_RESULT <= 6'd18;
            32'b00000000000000000001xxxxxxxxxxxx:
                CLZ_RESULT <= 6'd19;
            32'b000000000000000000001xxxxxxxxxxx:
                CLZ_RESULT <= 6'd20;
            32'b0000000000000000000001xxxxxxxxxx:
                CLZ_RESULT <= 6'd21;
            32'b00000000000000000000001xxxxxxxxx:
                CLZ_RESULT <= 6'd22;
            32'b000000000000000000000001xxxxxxxx:
                CLZ_RESULT <= 6'd23;
            32'b0000000000000000000000001xxxxxxx:
                CLZ_RESULT <= 6'd24;
            32'b00000000000000000000000001xxxxxx:
                CLZ_RESULT <= 6'd25;
            32'b000000000000000000000000001xxxxx:
                CLZ_RESULT <= 6'd26;
            32'b0000000000000000000000000001xxxx:
                CLZ_RESULT <= 6'd27;
            32'b00000000000000000000000000001xxx:
                CLZ_RESULT <= 6'd28;
            32'b000000000000000000000000000001xx:
                CLZ_RESULT <= 6'd29;
            32'b0000000000000000000000000000001x:
                CLZ_RESULT <= 6'd30;
            32'b00000000000000000000000000000001:
                CLZ_RESULT <= 6'd31;
            32'b00000000000000000000000000000000:
                CLZ_RESULT <= 6'd32;
            default:
                CLZ_RESULT <= 6'd0;
        endcase
    end

endmodule
