module DATA_SYNC #(

	parameter NUM_STAGES = 2,
	parameter	BUS_WIDTH = 8
)(
	
	input		wire									CLK,
	input		wire									RST,
	input		wire									bus_enable,
	input		wire	[BUS_WIDTH-1:0]	unsync_bus,
	output 	reg		[BUS_WIDTH-1:0] sync_bus,
	output	reg										enable_pulse
);

reg		[NUM_STAGES-1:0]	sync_reg;
reg 										enable_flop;
//wire  [BUS_WIDTH-1:0]  	sync_bus_c ;
//wire										enable_pulse_w;


// Parametrized FlipFlop Sync 
always @(posedge CLK or negedge RST)
 	begin
 	 	if(!RST)      // active low
 	 	 	begin
 	 	 		sync_reg <= 'b0;
 	 	 	end
 	 	else
 	 	 	begin
 	 	 	  sync_reg <= {sync_reg[NUM_STAGES-2:0],bus_enable};
 	 	 	end  
 	end

// Pulse Generator
always @(posedge CLK or negedge RST)
 	begin
 	 	if (!RST) 
 	 		begin
 	 			enable_pulse <= 1'b0;
 	 			enable_flop <= 1'b0;
 	 		end
 	 	else 
 	 		begin
				enable_flop <= sync_reg[NUM_STAGES-1];	
				enable_pulse <= sync_reg[NUM_STAGES-1] && ~enable_flop; 	 		
 	 		end
 	end  

//assign enable_pulse_w = sync_reg[NUM_STAGES-1] && !enable_flop;
//assign sync_bus_c = enable_pulse_w? unsync_bus : sync_bus;

// Data capture
always @(posedge CLK or negedge RST) 
	begin
	  if (!RST)
	    sync_bus <= 'b0;
	  else if(enable_pulse)
	    sync_bus <= unsync_bus;
	end

endmodule
