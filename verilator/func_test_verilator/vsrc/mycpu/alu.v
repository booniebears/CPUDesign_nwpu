module alu1(
	A, B, ALU1Op,
	
	C,Overflow
	);
	input[31:0] A, B;
	input[3:0] ALU1Op;
	
	output reg Overflow;
	output reg[31:0] C;

	wire Less;
	
	wire[2:0] add_overflow;
	wire[2:0] sub_overflow;

	wire[31:0] add_result;
	wire[31:0] sub_result;
	wire[31:0] _or_result;
	wire[31:0] and_result;
	wire[31:0] nor_result;
	wire[31:0] xor_result;
	wire[31:0] sll_result;
	wire[31:0] srl_result;
	wire[31:0] sra_result;
	wire[31:0] cmp_result;

	assign add_result = A + B;
	assign sub_result = A - B;
	assign _or_result = A | B;
	assign and_result = A & B;
	assign nor_result = ~(A | B);
	assign xor_result = A ^ B;
	assign sll_result = B << A[4:0];
	assign srl_result = B >> A[4:0];
	assign sra_result = $signed(B) >>> A[4:0];
	assign cmp_result = {31'd0,Less};

	assign Less = (ALU1Op[0] && A[31]^B[31]) ? ~(A < B) : (A < B);
	//		ALU1Op == 4'b1001 : signed compare
	//		ALU1Op == 4'b1010 : unsigned compare

	always@(ALU1Op, add_result, sub_result, _or_result, and_result, nor_result, xor_result,
			sll_result, srl_result, sra_result, cmp_result)
		case(ALU1Op)
			4'b0000, 4'b1011:	C = add_result;		//add/addu
			4'b0001, 4'b1100:	C = sub_result;		//sub/subu
			4'b0010:			C = _or_result;		//or
			4'b0011:			C = and_result;		//and
			4'b0100:			C = nor_result;		//nor
			4'b0101:			C = xor_result;		//xor
			4'b0110:			C = sll_result;		//logical left shift
			4'b0111:			C = srl_result;		//logical right shift
			4'b1000:			C = sra_result;		//arithmetical right shift
			default:			C = cmp_result;		//signed/unsigned compare
		endcase
	
	assign add_overflow = {A[31],B[31],add_result[31]};
	assign sub_overflow = {A[31],B[31],sub_result[31]};

	always@(ALU1Op,add_overflow, sub_overflow)
		case(ALU1Op)
		4'b0000:
			case(add_overflow)
				3'b110, 3'b001:		Overflow = 1'b1;
				default:			Overflow = 1'b0;
			endcase
		4'b0001:
			case(sub_overflow)
				3'b100, 3'b011:		Overflow = 1'b1;
				default:			Overflow = 1'b0;
			endcase
		default:	Overflow = 1'b0;
		endcase

endmodule
