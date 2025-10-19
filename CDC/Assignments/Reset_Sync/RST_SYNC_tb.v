module RST_SYNC_tb ();

parameter NUM_STAGES =3;

reg		RST_tb;
reg		CLK_tb;
wire	SYNC_RST_tb;

initial 
	begin
	
	CLK_tb = 1'b0;
	RST_tb = 1'b1;

	#20

	RST_tb = 1'b0;
	#20
	RST_tb = 1'b1;
	#40
	RST_tb = 1'b0;

	// de-assert quickly
	#10 
	RST_tb = 1'b1;
	#5
	RST_tb = 1'b0;

	#100
	$stop;

	end


always #5 CLK_tb = ~CLK_tb;

RST_SYNC # (.NUM_STAGES(NUM_STAGES)) DUT
(
	.RST(RST_tb),
	.CLK(CLK_tb),
	.SYNC_RST(SYNC_RST_tb)
);

endmodule