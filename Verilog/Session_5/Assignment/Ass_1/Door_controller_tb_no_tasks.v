`timescale 1ns/1ps

module Door_controller_tb ();

// Inputs
reg CLK_tb;
reg RST_tb;
reg DN_Max_tb;
reg UP_Max_tb;
reg Activate_tb;

// Outputs
wire UP_M_tb;
wire DN_M_tb;

// Testbench logic
initial 
  begin
    $dumpfile("Door_controller.vcd");
    $dumpvars;

    // Initial values
    CLK_tb = 0;
    RST_tb = 1;     
    DN_Max_tb = 1;  // Door initially fully closed
    UP_Max_tb = 0;
    Activate_tb = 0;

    // Hold reset
    #25;
    RST_tb = 0;     // Assert active-low reset
    #10;
    RST_tb = 1;     // Deassert reset
   if (!UP_M_tb && ! DN_M_tb) 
      begin
        $display(" test case 1: reset successfully");
      end
    else 
      begin
        $display(" test case 1: reset failed");
      end

    // Activate to open door (DN_Max = 1, UP_Max = 0)
    #20;
    Activate_tb = 1;
    $display("test case 2: Activate opening (should go to MV_UP)");

    // Wait for some clock cycles to complete opening
    #100;
    UP_Max_tb = 1;  // Simulate door fully opened
    DN_Max_tb = 0;
    if (UP_M_tb && !DN_M_tb) 
      begin
        $display(" Door fully opened successfully at simulation time %0t",$time);
      end
    else 
      begin
        $display(" Door fully opened failed at simulation time %0t",$time);
      end

    #20;
    Activate_tb = 0;
    $display("test case 3: Deactivating(FSM should return to IDLE)");
    if (!UP_M_tb && !DN_M_tb) 
      begin
        $display(" Door reach IDLE state successfully at simulation time %0t",$time);
      end
    else 
      begin
        $display(" Door failed to reach IDLE state at simulation time %0t",$time);
      end

    // Activate again to close (UP_Max = 1, DN_Max = 0)
    #40;
    UP_Max_tb = 1;
    DN_Max_tb = 0;
    Activate_tb = 1;
    $display("Test case 4: Activate closing (should go to MV_DN)");

    // Wait for some time while closing
    #80;
    DN_Max_tb = 1;  // Simulate door fully closed
    Activate_tb = 0;
    if (!UP_M_tb && DN_M_tb) 
      begin
        $display(" Door reach IDLE state successfully at simulation time %0t",$time);
      end
    else 
      begin
        $display(" Door failed to reach IDLE state at simulation time %0t",$time);
      end

    // Try activating while door is fully opened (UP_Max = 1)
    #20;
    DN_Max_tb = 0;
    UP_Max_tb = 1;
    Activate_tb = 1;
    #20;
    Activate_tb = 0;
    if (UP_M_tb) 
      begin
        $display(" Door fully closed successfully at simulation time %0t",$time);
      end
    else 
      begin
        $display(" Door fully closed failed at simulation time %0t",$time);
      end
    
    // Apply reset again to test reset behavior
    #30;
    $display("Test case 5: Applying reset...");
    RST_tb = 0;
    #10;
    RST_tb = 1;

    if (!UP_M_tb && ! DN_M_tb) 
      begin
        $display(" Door reach IDLE state successfully at simulation time %0t",$time);
      end
    else 
      begin
        $display(" Door failed to reach IDLE state at simulation time %0t",$time);
      end

    #30;
    $display("\n--- Testbench Completed ---\n");
    $stop;
  end

// Clock generation: 50 MHz ---> 20 ns period
always#10 CLK_tb = ~CLK_tb;

// Instantiate the Door_controller
Door_controller DUT (
    .CLK(CLK_tb),
    .RST(RST_tb),
    .DN_Max(DN_Max_tb),
    .UP_Max(UP_Max_tb),
    .Activate(Activate_tb),
    .UP_M(UP_M_tb),
    .DN_M(DN_M_tb)
);

endmodule
