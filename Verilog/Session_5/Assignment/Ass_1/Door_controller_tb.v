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

parameter CLK_Period = 20;

// Testbench logic
initial 
  begin
    $dumpfile("Door_controller.vcd");
    $dumpvars;

    initialzie();

    reset();

    open (); 

    // check door is opening
    check_output(1'b1,1'b0);

    close ();

    // check door is closing
    check_output(1'b0,1'b1);

    reset();

    $display("\n--- Testbench Completed ---\n");
    $stop;
  end

task initialzie;
  begin
    // Initial values
    CLK_tb = 0;
    RST_tb = 1;    
    DN_Max_tb = 1;  // Door initially fully closed
    UP_Max_tb = 0;
    Activate_tb = 0;
  end
endtask

task reset;
  begin
    RST_tb = 1'b1;
    #CLK_Period
    RST_tb = 1'b0;
    #CLK_Period
    RST_tb = 1'b1;
  end
endtask

task open;
  begin
    #(4*CLK_Period) // wait 80 ns 
    DN_Max_tb = 1;
    UP_Max_tb = 0;
    Activate_tb = 1;
  end
endtask

task close;
  begin
    #(4*CLK_Period) // wait 80 ns 
    DN_Max_tb = 0;
    UP_Max_tb = 1;
    Activate_tb = 1;    
  end
endtask

task check_output(
  
input reg Exp_UP_M, 
input reg Exp_DN_M
);

  begin
    if ((UP_M_tb == Exp_UP_M) && (DN_M_tb == Exp_DN_M)) 
      begin
        $display("Door is moving correct at Sim.time = %0t",$time);
      end
    else 
      begin
        $display("Door is moving wrong at Sim.time = %0t",$time);
      end
  end
endtask


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
