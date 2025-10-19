`timescale 1ns/1ps

module tb_MUX();

    // Testbench signals
    reg         CLK;
    reg         RST;
    reg  [2:0]  Mux_Sel;
    reg         Ser_Data;
    reg         par_Bit;
    wire        TX_OUT;

    // Instantiate DUT
    MUX uut (
        .CLK(CLK),
        .RST(RST),
        .Mux_Sel(Mux_Sel),
        .Ser_Data(Ser_Data),
        .par_Bit(par_Bit),
        .TX_OUT(TX_OUT)
    );

    // Clock generation (20ns period)
    initial CLK = 0;
    always #10 CLK = ~CLK;

    // Stimulus
    initial begin
        // Initialize
        RST = 0;
        Mux_Sel = 3'b000;
        Ser_Data = 0;
        par_Bit = 0;

        // Release reset after 2 clocks
        #25;
        RST = 1;

        // Test idle
        Mux_Sel = 3'b000; // idle_sel
        #20;

        // Test start bit
        Mux_Sel = 3'b001; // start_sel
        #20;

        // Test serializer data (try 0 then 1)
        Ser_Data = 0;
        Mux_Sel = 3'b011; // ser_data_sel
        #20;

        Ser_Data = 1;
        #20;

        // Test parity bit
        par_Bit = 0;
        Mux_Sel = 3'b110; // par_bit_sel
        #20;

        par_Bit = 1;
        #20;

        // Test stop bit
        Mux_Sel = 3'b010; // stop_bit_sel
        #20;

        // Back to idle
        Mux_Sel = 3'b000;
        #20;

        $stop;
    end

    // Monitor
    initial begin
        $monitor("Time=%0t | RST=%b | Mux_Sel=%b | Ser_Data=%b | par_Bit=%b | TX_OUT=%b",
                  $time, RST, Mux_Sel, Ser_Data, par_Bit, TX_OUT);
    end

endmodule
