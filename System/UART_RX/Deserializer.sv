module Deserializer (

	input		wire				CLK,
	input		wire				RST,	
  input		wire				sampled_bit,
	input		wire				deser_en,
	input		wire	[3:0]	prescale,
	input		wire	[3:0]	edge_cnt,
	output	reg 	[7:0] P_DATA //assumed data bits is only 8 bits (no configurations)
);

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				P_DATA <= 8'b0;	
			end
		else if (deser_en && edge_cnt == (prescale - 4'b1))
			begin
				//TX sends LSB first so Shift right to recieive correctly
				P_DATA <= {sampled_bit,P_DATA[7:1]};
			end
	end

endmodule