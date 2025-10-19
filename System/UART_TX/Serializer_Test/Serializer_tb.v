`timescale 1ns/1ps

module Serializer_tb();

// Testbench signals
reg         CLK;
reg         RST;
reg  [7:0]  P_DATA;
reg         Ser_en;
wire        Ser_done;
wire        ser_busy;
wire        Ser_data;



initial begin
    // Initialize signals
    CLK     = 0;
    RST     = 0;
    Ser_en  = 0;
    P_DATA  = 8'b0;
    // Apply reset
    #12;
    RST = 1;
    // Send first byte
    @(negedge CLK);
    P_DATA = 8'b1010_1100; // LSB first output expected:0,0,1,1,0,1,0,1
    Ser_en = 1;
    @(negedge CLK);
    Ser_en = 0; // Pulse only one cycle
    P_DATA = 8'b0011_0011;
    // Wait until serialization done
    wait(Ser_done);
    $display("First serialization done at time %t", $time);
    // Send second byte
    @(negedge CLK);
    P_DATA = 8'b1111_0000;
    Ser_en = 1;
    @(negedge CLK);
    Ser_en = 0;
    wait(Ser_done);
    $display("Second serialization done at time %t", $time);
    // Finish simulation
    #20;
    $stop;
end

// Instantiate the DUT
Serializer DUT (
    .CLK(CLK),
    .RST(RST),
    .P_DATA(P_DATA),
    .Ser_en(Ser_en),
    .Ser_done(Ser_done),
    .ser_busy(ser_busy),
    .Ser_data(Ser_data)
);

// Clock generation
always #5 CLK = ~CLK; // 100 MHz

endmodule
