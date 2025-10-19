module UART_RX (

	input		wire 				CLK,
	input		wire				RST,
	input		wire				RX_IN,
	input		wire	[3:0]	prescale,
	input		wire				PAR_EN,
	input		wire				PAR_TYP,
	output 	reg		[7:0]	P_DATA,
	output 	reg					par_err,
	output	reg					stp_err,
	output	reg					data_valid
    
);

//Internal Wires
wire	[3:0]	edge_cnt;
wire	[3:0]	bit_cnt;
wire				strt_glitch;
wire				edge_en;
wire				dat_samp_en;
wire				par_chk_en;
wire				strt_chk_en;
wire				stp_chk_en;
wire				deser_en;
wire				sampled_bit;
//wire				sampled_bit_d;

FSM_RX U_FSM_RX (

	.CLK(CLK),
	.RST(RST),
	.RX_IN(RX_IN),
	.PAR_EN(PAR_EN),
	.prescale(prescale),
	.edge_cnt(edge_cnt),
	.bit_cnt(bit_cnt),
	.par_err(par_err),
	.strt_glitch(strt_glitch),
	.stp_err(stp_err),
	.data_valid(data_valid),
	.edge_en(edge_en),	
	.dat_samp_en(dat_samp_en),
	.par_chk_en(par_chk_en),
	.strt_chk_en(strt_chk_en),
	.stp_chk_en(stp_chk_en),
	.deser_en(deser_en)
);

Data_Sampling U_Data_Sampling (

	.CLK(CLK),
	.RST(RST),
	.RX_IN(RX_IN),
	.prescale(prescale),
	.edge_cnt(edge_cnt),
	.dat_samp_en(dat_samp_en),
	.sampled_bit(sampled_bit)
	//.sampled_bit_d(sampled_bit_d)
);

edge_bit_counter U_edge_bit_counter (

	.CLK(CLK),
	.RST(RST),
	.edge_en(edge_en),
	.prescale(prescale),
	.bit_cnt(bit_cnt),
	.edge_cnt(edge_cnt)
);

start_check U_start_check (

	.CLK(CLK),
	.RST(RST),
	.strt_chk_en(strt_chk_en),
	.sampled_bit(sampled_bit),
	.strt_glitch(strt_glitch)
);

parity_check U_parity_check (

	.CLK(CLK),
	.RST(RST),
	.par_chk_en(par_chk_en),
	.PAR_TYP(PAR_TYP),
	.sampled_bit(sampled_bit),
	.P_DATA(P_DATA),
	.par_err(par_err)	
);

stop_check U_stop_check (

	.CLK(CLK),
	.RST(RST),
	.stp_chk_en(stp_chk_en),
	.sampled_bit(sampled_bit),
	.stp_err(stp_err)
);

Deserializer U_Deserializer (

	.CLK(CLK),
	.RST(RST),
	.sampled_bit(sampled_bit),
	.deser_en(deser_en),
	.prescale(prescale),
	.edge_cnt(edge_cnt),
	.P_DATA(P_DATA)
);

endmodule