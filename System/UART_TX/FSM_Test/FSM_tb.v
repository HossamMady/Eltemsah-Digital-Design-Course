`timescale 1ns/1ps

module FSM_tb ();

reg  				CLK;
reg  				RST;
reg 				DATA_VALID;
reg  				ser_done;
reg					ser_busy;
reg  				PAR_EN;
wire  			ser_en;
wire 				busy; // whole frame busy
wire 	[2:0] Mux_Sel;

// Test sequence
    initial begin
        // Initial values
				CLK = 0;
        RST = 0;
        DATA_VALID = 0;
        ser_done = 0;
        ser_busy = 0;
        PAR_EN = 0;

        // Apply reset
        #12 RST = 1;

        // Case 1: Frame without parity
        #10 DATA_VALID = 1;  // trigger start
        #10 DATA_VALID = 0;

        // Serializer finishes after some time
        #80 ser_done = 1;  // complete DATA state
        #10 ser_done = 0;  // back to normal

        // Wait for STOP state to finish
        #50;

        // Case 2: Frame with parity
        PAR_EN = 1;
        #10 DATA_VALID = 1;
        #10 DATA_VALID = 0;

        #80 ser_done = 1;
        #10 ser_done = 0;

        // Wait for end
        #50;

        $stop; // end simulation
    end


FSM DUT (
	.CLK(CLK),
	.RST(RST),
	.DATA_VALID(DATA_VALID),
	.ser_done(ser_done),
	.ser_busy(ser_busy),
	.PAR_EN(PAR_EN),
	.ser_en(ser_en),
	.busy(busy),
	.Mux_Sel(Mux_Sel)

);

always #5 CLK = ~CLK; 


endmodule




