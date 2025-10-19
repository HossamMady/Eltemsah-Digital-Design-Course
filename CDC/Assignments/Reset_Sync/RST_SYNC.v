module RST_SYNC # (

	parameter	NUM_STAGES = 3
)
(

	input 	wire	RST,
	input		wire	CLK,
	output 	reg		SYNC_RST
);

reg 	[NUM_STAGES-1:0] sync_reg;
integer I;

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				sync_reg <= 'b0;		
				SYNC_RST <= 1'b0;				
			end
		else 
			begin
				sync_reg[0] <= 1'b1;
				for (I=1 ; I<NUM_STAGES ; I=I+1)
					begin
						sync_reg[I] <= sync_reg[I-1];
					end	
				SYNC_RST <= sync_reg[NUM_STAGES-1]; // de-asserted syncronously	
				// wala kda SYNC_RST <= ~sync_reg[NUM_STAGES-1];
			end
	end


endmodule