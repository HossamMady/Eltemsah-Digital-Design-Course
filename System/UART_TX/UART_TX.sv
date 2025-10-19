module UART_TX (

	input		wire				CLK,
	input		wire				RST,
  input		wire	[7:0]	P_DATA,
	input		wire				DATA_VALID,
	input		wire				PAR_EN,
	input		wire				PAR_TYP,
	output	wire				BUSY,
	output	wire				TX_OUT
    
);

// Internal wires
wire [2:0] 	mux_sel_top;
wire       	ser_en_top;
wire       	ser_done_top;
wire       	ser_data_top;
wire				ser_busy_top;
wire       	par_bit_top;

FSM U0_FSM (

	.CLK(CLK),
	.RST(RST),
 	.DATA_VALID(DATA_VALID),
  .ser_done(ser_done_top),
	.ser_busy(ser_busy_top),
  .PAR_EN(PAR_EN),
	.ser_en(ser_en_top),
	.busy(BUSY), // whole frame busy
	.Mux_Sel(mux_sel_top)

);

Serializer U0_Serializer (

	.CLK(CLK),
  .RST(RST),
  .P_DATA(P_DATA),
  .Ser_en(ser_en_top),    
  .Ser_done(ser_done_top),
  .ser_busy(ser_busy_top),  
  .Ser_data(ser_data_top)  

);

parity_Calc U0_Parity_Calc (

	.CLK(CLK),
	.RST(RST),
	.P_DATA(P_DATA),
	.DATA_VALID(DATA_VALID),
	.PAR_TYP(PAR_TYP),
	.Par_bit(par_bit_top)

);

MUX U0_MUX (

.CLK(CLK),
.RST(RST),
.Mux_Sel(mux_sel_top),
.Ser_Data(ser_data_top),
.par_Bit(par_bit_top),
.TX_OUT(TX_OUT)

);

endmodule