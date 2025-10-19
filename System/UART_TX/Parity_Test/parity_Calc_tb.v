`timescale 1ns/1ps

module parity_Calc_tb ();

// Testbench signals
reg        CLK;
reg        RST;
reg  [7:0] P_DATA;
reg        DATA_VALID;
reg        PAR_TYP;
wire       Par_bit;

   
initial
    begin
        // Init
        CLK = 0;
        RST = 0;
        P_DATA = 8'b0;
        DATA_VALID = 0;
        PAR_TYP = 0;  // Even parity
        #20;
        
        // Release reset
        RST = 1;
        // Test case 1: Even parity, data = 8'b10110010 (4 ones)
        P_DATA = 8'b10110010; // 4 ones -> even parity bit should be 0
        PAR_TYP = 0; // EVEN
        DATA_VALID = 1;
        #10 DATA_VALID = 0; // One clock pulse
        #20;
        // Test case 2: Odd parity, same data
        P_DATA = 8'b10110010; // 4 ones -> odd parity bit should be 1
        PAR_TYP = 1; // ODD
        DATA_VALID = 1;
        #10 DATA_VALID = 0;
        #20;
        // Test case 3: Odd parity, data = 8'b11110000 (4 ones)
        P_DATA = 8'b11110000;
        PAR_TYP = 1; // ODD
        DATA_VALID = 1;
        #10 DATA_VALID = 0;
        #20;
        // Test case 4: Even parity, data = 8'b11110000 (4 ones)
        P_DATA = 8'b11110000;
        PAR_TYP = 0; // EVEN
        DATA_VALID = 1;
        #10 DATA_VALID = 0;
        #20;
        // Hold test: Data valid low, parity should hold previous value
        #50;
        $stop;
    end

// Instantiate DUT
parity_Calc DUT (
    .CLK(CLK),
    .RST(RST),
    .P_DATA(P_DATA),
    .DATA_VALID(DATA_VALID),
    .PAR_TYP(PAR_TYP),
    .Par_bit(Par_bit)
);
// Clock generation: 10ns period
always #5 CLK = ~CLK;

endmodule
