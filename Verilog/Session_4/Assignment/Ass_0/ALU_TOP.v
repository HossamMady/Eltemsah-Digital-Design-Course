module ALU_TOP

#( parameter OP_DATA_WIDTH = 8,
			 ARITH_OUT_WIDTH = OP_DATA_WIDTH + OP_DATA_WIDTH,
			 LOGIC_OUT_WIDTH = OP_DATA_WIDTH,
			 SHIFT_OUT_WIDTH = OP_DATA_WIDTH,
			 CMP_OUT_WIDTH = 3
)(
	input wire [OP_DATA_WIDTH-1:0]   A,
	input wire [OP_DATA_WIDTH-1:0]   B,
	input wire [3:0]  				 ALU_FUN,
	input wire       			 	 CLK,
	input wire 			             RST,
	output wire [ARITH_OUT_WIDTH-1:0] Arith_OUT,
	output wire  					  Arith_flag,
	output wire [LOGIC_OUT_WIDTH-1:0] Logic_OUT,
	output wire  					  Logic_flag,
	output wire [SHIFT_OUT_WIDTH-1:0] Shift_OUT,
	output wire  					  Shift_flag,
	output wire [CMP_OUT_WIDTH-1:0]   CMP_OUT,
	output wire  					  CMP_flag

);

//Internal Connections
wire Arith_enable;
wire Shift_enable;
wire Logic_enable;
wire CMP_enable;

Decoder U0 (
	.IN(ALU_FUN[3:2]),
	.OUT({Arith_enable,Logic_enable,CMP_enable,Shift_enable})
	);

ARITHMETIC_UNIT # (.IN_DATA_WIDTH(OP_DATA_WIDTH) , .OUT_DATA_WIDTH(ARITH_OUT_WIDTH)) U0_ARITH (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.Arith_Enable(Arith_enable),
	.RST(RST),
	.ALU_Arith(Arith_OUT),
	.Arith_Flag(Arith_flag)
	);

LOGIC_UNIT # (.IN_DATA_WIDTH(OP_DATA_WIDTH) , .OUT_DATA_WIDTH(LOGIC_OUT_WIDTH)) U0_LOGIC (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.Logic_Enable(Logic_enable),
	.RST(RST),
	.ALU_Logic(Logic_OUT),
	.Logic_Flag(Logic_flag)
	);

CMP_UNIT # (.IN_DATA_WIDTH(OP_DATA_WIDTH) , .OUT_DATA_WIDTH(CMP_OUT_WIDTH)) U0_CMP (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.CMP_Enable(CMP_enable),
	.RST(RST),
	.ALU_CMP(CMP_OUT),
	.CMP_Flag(CMP_flag)
	);

SHIFT_UNIT # (.IN_DATA_WIDTH(OP_DATA_WIDTH) , .OUT_DATA_WIDTH(SHIFT_OUT_WIDTH)) U0_SHIFT (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.Shift_Enable(Shift_enable),
	.RST(RST),
	.ALU_Shift(Shift_OUT),
	.Shift_Flag(Shift_flag)
	);





endmodule