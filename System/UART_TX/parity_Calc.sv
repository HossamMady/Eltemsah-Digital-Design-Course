module parity_Calc  (

	input   wire 				CLK,
	input		wire        RST,
	input   wire  [7:0] P_DATA,
	input 	wire 				DATA_VALID,
	input   wire        PAR_TYP,
	output  reg         Par_bit       

);

localparam EVEN_PARITY = 1'b0,
					 ODD_PARITY = 1'b1;

// Internal Signal
reg Par_bit_comb;

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				Par_bit <= 1'b0;
			end
		else 
			begin
				Par_bit <= Par_bit_comb;
			end
	end

// Parity Logic : for even parity we make the total number of 1's even
//                and for odd we make it odd
always @(*)
	begin
		// Default value (Hold previous parity bit until new data is ready) 
		Par_bit_comb = Par_bit ;

		if (DATA_VALID)
			begin
				if (PAR_TYP == ODD_PARITY)
					begin
						Par_bit_comb = ~(^P_DATA);
					end
				else // Even Parity
					begin
						Par_bit_comb = ^P_DATA; 
					end
			end
	end

endmodule