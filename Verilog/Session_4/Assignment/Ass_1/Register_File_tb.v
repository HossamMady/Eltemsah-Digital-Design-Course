`timescale 1ns/1ps

module Register_File_tb();

// Inputs
reg clk_tb;
reg rst_tb;
reg WrEn_tb;
reg RdEn_tb;
reg [2:0] Address_tb;
reg [15:0] WrData_tb;

// Outputs
wire [15:0] RdData_tb;



initial 
    begin
        $dumpfile("Register_File.vcd");
        $dumpvars;
        // Initial values
        clk_tb = 0;
        rst_tb = 1;    // Start with reset active to make all addresses has known value (0)
        WrEn_tb = 0;
        RdEn_tb = 0;
        Address_tb = 3'b000;
        WrData_tb = 16'h0000;
        //reset all the registers before the tests
        rst_tb = 0; // Assert reset (active low)
        #10;
        rst_tb = 1; // Deassert reset

        // Scenario 1: Write to register 3
        #10;
        WrEn_tb = 1;
        Address_tb = 3'b011;
        WrData_tb = 16'hABCD;
        #10;
        WrEn_tb = 0;
        $display("Test 1 - Wrote 0xABCD to register 3");

        // Scenario 2: Read from register 3
        #10;
        RdEn_tb = 1;
        Address_tb = 3'b011;
        #10;
        RdEn_tb = 0;
        $display("Test 2 - Read from register 3");
        if (RdData_tb == 16'hABCD) 
            begin
                $display("Write and Read Tests passed");
            end
        else 
            begin
                 $display("Write and Read Tests failed with RD_DATA = %h at sim time = %t",RdData_tb,$time);
            end

        // Scenario 3: Write attempt without WrEn (should not work)
        #10;
        $display("Test 3 - Write without Enable");
        WrEn_tb = 0;
        Address_tb = 3'b100;
        WrData_tb = 16'h1234;
        // WrEn stays 0
        #10;
        RdEn_tb = 1;
        Address_tb = 3'b100;
        #10;
        RdEn_tb = 0;
        if (RdData_tb == 16'h0) 
            begin
                $display("Write without Enable Test passed");
            end
        else 
            begin
                 $display("Write without Enable Test failed with RD_DATA = %h at sim time",RdData_tb,$time);
            end

        // Scenario 4: Final Reset
        #10;
        $display("Test 4 - Applying reset to clear all registers...");
        rst_tb = 0; // Active-low reset
        #10;
        rst_tb = 1; // Deassert reset

        // Read again from register 3 to verify it's cleared
        #10;
        RdEn_tb = 1;
        Address_tb = 3'b011;
        #10;
        RdEn_tb = 0;
       if (RdData_tb == 16'h0) 
            begin
                $display("Reset Test passed");
            end
        else 
            begin
                 $display("Reset Test failed with RD_DATA = %h at simulation time = %t",RdData_tb,$time);
            end

        #10;
        $display("\n--- Testbench Completed ---\n");
        $stop;
    end

// Clock Generation: 10 ns period
always #5 clk_tb = ~clk_tb;

// Instantiate the Design Under Test 
Register_File DUT (
    .clk(clk_tb),
    .rst(rst_tb),
    .WrEn(WrEn_tb),
    .RdEn(RdEn_tb),
    .Address(Address_tb),
    .WrData(WrData_tb),
    .RdData(RdData_tb)
);

endmodule
