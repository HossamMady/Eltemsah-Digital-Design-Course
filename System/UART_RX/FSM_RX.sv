module FSM_RX (
	//assumed data bits is only 8 bits (no configurations)
	input		wire 				CLK,
	input		wire 				RST,
	input		wire				RX_IN,
	input		wire				PAR_EN,
	input		wire	[3:0]	prescale,	
	input		wire	[3:0]	edge_cnt,	//max no. of edges is 32 (prescale)
  input		wire	[3:0]	bit_cnt,  //max no. of bits in frame is 11 bits
	input		wire				par_err,
	input		wire				strt_glitch,
	input		wire				stp_err,
	output	reg 				data_valid,
	output	reg 				edge_en,
	output 	reg 				dat_samp_en,
	output 	reg 				par_chk_en,
	output 	reg 				strt_chk_en,
	output 	reg 				stp_chk_en,
	output	reg 				deser_en

);

// Gray Code Encoding
typedef enum bit [2:0] {
		IDLE		= 3'b000,
    START 	= 3'b001,
		DATA 		= 3'b011,
		PARITY	= 3'b010,
		STOP		= 3'b110,
		ERR_CHECK	= 3'b100

}e_state;

e_state current_state , next_state;
// State Transition Logic
always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				current_state <= IDLE;	
			end
		else
			begin
				current_state <= next_state; 
			end
	end

reg		[3:0]		chk_edge;
reg		[3:0]		chk_edge_err;
// to determine the number of edges by knowing prescale
always @(*) 
	begin
		chk_edge = prescale - 4'd1;
		chk_edge_err = 4'd2;
	end

// Next State Logic
always @(*) 
	begin
		case (current_state)
			IDLE: begin  
							if (!RX_IN) //start receiving when first bit is zero(start bit)  
								begin
									next_state = START;
								end
							else
								begin
									next_state = IDLE;
								end
						end 

			START: begin  
							if (bit_cnt == 4'd0 && edge_cnt == chk_edge) 
								begin
									if (!strt_glitch) 
										begin
											next_state = DATA;
										end
									else
										begin
											next_state = IDLE;
										end
								end
							else
								begin
									next_state = START;
								end
						end

			DATA: begin  
							if (bit_cnt == 4'd8 && edge_cnt == chk_edge) 
								begin
									if (PAR_EN) 
										begin
											next_state = PARITY;
										end
									else
										begin
											next_state = STOP;
										end
								end
							else
								begin
									next_state = DATA;
								end
						end

			PARITY: begin  
							if (bit_cnt == 4'd9 && edge_cnt == chk_edge) 
								begin
									next_state = STOP;	
								end
							else
								begin
									next_state = PARITY ;
								end
						end   

			STOP: begin  
							if (PAR_EN) 
								begin
									if (bit_cnt == 4'd10 && edge_cnt == chk_edge_err) 
										begin
											next_state = ERR_CHECK;
										end
									else
										begin
											next_state = STOP;
										end
								end
							else
								begin
									if (bit_cnt == 4'd9 && edge_cnt == chk_edge_err) 
										begin
											next_state = ERR_CHECK;
										end
									else
										begin
											next_state = STOP;
										end	
								end
						end

			ERR_CHECK: 	begin
										if (!RX_IN) 
											begin
												next_state = START;	
											end
										else	
											begin
												next_state = IDLE;	
											end
									end

			default: 	begin
									next_state = IDLE;
								end    
		endcase
	end

// Output Logic
always @(*) 
	begin
		// default values
		data_valid	= 1'b0;
		edge_en			= 1'b0;
		dat_samp_en	= 1'b0;
		par_chk_en	= 1'b0;
		strt_chk_en	= 1'b0;
		stp_chk_en	= 1'b0;
		deser_en		= 1'b0;

		case (current_state)
			IDLE:	begin
							if (!RX_IN) 
								begin
									data_valid	= 1'b0;
									edge_en			= 1'b1;
									dat_samp_en	= 1'b1;
									par_chk_en	= 1'b0;
									strt_chk_en	= 1'b1;
									stp_chk_en	= 1'b0;
									deser_en		= 1'b0;
								end
							else
								begin
									data_valid	= 1'b0;
									edge_en			= 1'b0;
									dat_samp_en	= 1'b0;
									par_chk_en	= 1'b0;
									strt_chk_en	= 1'b0;
									stp_chk_en	= 1'b0;
									deser_en		= 1'b0;
								end
						end

			START:	begin
								data_valid	= 1'b0;
								edge_en			= 1'b1;
								dat_samp_en	= 1'b1;
								par_chk_en	= 1'b0;
								strt_chk_en	= 1'b1;
								stp_chk_en	= 1'b0;
								deser_en		= 1'b0;
							end 

			DATA:	begin
								data_valid	= 1'b0;
								edge_en			= 1'b1;
								dat_samp_en	= 1'b1;
								par_chk_en	= 1'b0;
								strt_chk_en	= 1'b0;
								stp_chk_en	= 1'b0;
								deser_en		= 1'b1;
							end 			

			PARITY:	begin
								data_valid	= 1'b0;
								edge_en			= 1'b1;
								dat_samp_en	= 1'b1;
								strt_chk_en	= 1'b0;
								stp_chk_en	= 1'b0;
								deser_en		= 1'b0;
								if (bit_cnt == 4'd9 && edge_cnt == chk_edge) 
								begin
									par_chk_en = 1'b1;	
								end
							end

			STOP:	begin
								data_valid	= 1'b0;
								edge_en			= 1'b1;
								dat_samp_en	= 1'b1;
								par_chk_en	= 1'b0;
								strt_chk_en	= 1'b0;
								stp_chk_en	= 1'b1;
								deser_en		= 1'b0;
							end 

			ERR_CHECK:	begin
										edge_en			= 1'b0;
										dat_samp_en	= 1'b0;
										par_chk_en	= 1'b0;
										strt_chk_en	= 1'b0;
										stp_chk_en	= 1'b0;
										deser_en		= 1'b0;
										if ((!par_err) && (!stp_err)) 
											begin
												data_valid = 1'b1;	
											end
										else
											begin
												data_valid = 1'b0;
											end
									end  
			
			default:	begin
									data_valid	= 1'b0;
									edge_en			= 1'b0;
									dat_samp_en	= 1'b0;
									par_chk_en	= 1'b0;
									strt_chk_en	= 1'b0;
									stp_chk_en	= 1'b0;
									deser_en		= 1'b0;							
								end
		endcase
	end

endmodule
