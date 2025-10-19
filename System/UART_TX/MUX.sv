module MUX (

	input	wire					CLK,
	input	wire					RST,
	input	wire 	[2:0] 	Mux_Sel,
	input	wire 			 		Ser_Data,
	input	wire 			 		par_Bit,
	output 	reg					TX_OUT

);

//mux_sel index
localparam [2:0] idle_sel  = 3'b000,
                 start_sel = 3'b001,
                 ser_data_sel  = 3'b011,
                 stop_bit_sel  = 3'b010,
                 par_bit_sel 	 = 3'b110;

// Output
localparam 	idle_out = 1'b1;
localparam	start_out = 1'b0;
localparam	stop_out 	= 1'b1;


always @(*) 
	begin
		case (Mux_Sel)
			idle_sel:	begin
									TX_OUT = idle_out;
								end
			start_sel:	begin
										TX_OUT = start_out;
									end
			ser_data_sel: begin
											TX_OUT = Ser_Data;
										end
			par_bit_sel:	begin
											TX_OUT = par_Bit;
										end
			stop_bit_sel:	begin
											TX_OUT = stop_out;
										end
			default:	begin
									TX_OUT = idle_out;
								end
		endcase

	end

endmodule