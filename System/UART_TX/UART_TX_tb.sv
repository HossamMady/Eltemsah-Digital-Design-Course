`timescale 1ns/1ps
module UART_TX_tb ();

reg         CLK_tb;
reg         RST_tb;
reg [7:0]   P_DATA_tb;
reg         DATA_VALID_tb;
reg         PAR_EN_tb;
reg         PAR_TYP_tb;
wire        BUSY_tb;
wire        TX_OUT_tb;

localparam CLK_CYCLE = 5;

// ================= Initialization and stimulus =================
initial 
	begin
	    $dumpfile("UART_TX.vcd");
	    $dumpvars;

	    // Start monitoring signals
	    $monitor("[%0t] CLK=%b RST=%b DATA_VALID=%b P_DATA=0x%0h PAR_EN=%b PAR_TYP=%b BUSY=%b TX_OUT=%b SER_DATA=%b", 
	             $time, CLK_tb, RST_tb, DATA_VALID_tb, P_DATA_tb, PAR_EN_tb, PAR_TYP_tb, BUSY_tb, TX_OUT_tb, DUT.ser_data_top);

	    // Initial default values
	    initialize();
			reset();
	
	    // Send frame without parity bit
	    //Send_Byte(8'h4F, 0, 0);

	    // Send frame with even parity bit
	    Send_Byte(8'h32, 1, 0);

	    // Send frame with odd parity bit
	    //Send_Byte(8'h4F, 1, 1);

	    // Apply reset at the end
	    //reset();

	    $stop;
	end

// ================= Tasks =================
task initialize;
    begin
        CLK_tb = 1'b0;
        RST_tb = 1'b1;
        DATA_VALID_tb = 1'b0;
        P_DATA_tb = 8'h00;
        PAR_EN_tb = 1'b0;
        PAR_TYP_tb = 1'b0; 
    end
endtask

task reset;
    begin
        $display("[%0t] Applying RESET", $time);
        RST_tb = 1'b0;
        #(CLK_CYCLE);
        RST_tb = 1'b1;
        $display("[%0t] Reset Deasserted", $time);
    end
endtask

task Send_Byte(
    input [7:0] p_data_task,
    input       par_en_task,
    input       par_typ_task
);
    begin

        P_DATA_tb     = p_data_task;
        PAR_EN_tb     = par_en_task;
        PAR_TYP_tb    = par_typ_task;
        DATA_VALID_tb = 1'b1;

        #(CLK_CYCLE);
        DATA_VALID_tb = 1'b0;

        
        wait(!BUSY_tb); // Wait until UART finishes
        $display("[%0t] Frame finished for 0x%0h", $time, p_data_task);

        #(2*CLK_CYCLE); // Gap between frames
    end
endtask

// ================= DUT Instantiation =================
UART_TX DUT (
    .CLK(CLK_tb),
    .RST(RST_tb),
    .P_DATA(P_DATA_tb),
    .DATA_VALID(DATA_VALID_tb),
    .PAR_EN(PAR_EN_tb),
    .PAR_TYP(PAR_TYP_tb),
    .BUSY(BUSY_tb),
    .TX_OUT(TX_OUT_tb)
);

// ================= Clock Generator (200 MHz > 5ns) =================
always #(2.5) CLK_tb = ~CLK_tb;

endmodule
