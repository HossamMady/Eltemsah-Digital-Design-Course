module start_check (

	input		wire	CLK,
	input		wire	RST,
  input		wire 	strt_chk_en,
	input		wire	sampled_bit,
	output	reg		strt_glitch
);

always @(posedge CLK or negedge RST ) 
	begin
		if (!RST) 
			begin
				strt_glitch <= 1'b0;
			end	
		else if (strt_chk_en)
			begin
				//'1' if the start bit isn't '0' as it should be
				strt_glitch <= sampled_bit; 
			end
		else
			begin
				strt_glitch <= 1'b0;
			end
	end

endmodule