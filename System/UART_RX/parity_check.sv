module parity_check (

	input		wire				CLK,
	input		wire				RST,	
	input		wire				par_chk_en,
	input		wire				PAR_TYP,
	input		wire 				sampled_bit,
	input		wire	[7:0] P_DATA, //assumed data bits is only 8 bits (no configurations)
	output	reg					par_err
);

reg	parity_calc;

always @(*) 
	begin
		if (PAR_TYP) 
			begin
				parity_calc = ~^P_DATA;	
			end
		else
			begin
				parity_calc = ^P_DATA;
			end
	end

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				par_err <= 1'b0;	
			end	
		else if (par_chk_en)
			begin
				par_err <= parity_calc ^ sampled_bit;
			end
		else
			begin
				par_err <= 1'b0;	
			end
	end
	
endmodule