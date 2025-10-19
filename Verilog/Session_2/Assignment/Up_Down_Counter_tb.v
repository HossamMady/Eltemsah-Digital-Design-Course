//time_unit = 1ns & time percision = 1ps
`timescale 1ns/1ps

module Up_Down_Counter_tb ();

reg [4:0] IN_tb;
reg       Load_tb;
reg		  Up_tb;
reg 	  Down_tb;
reg 	  CLK_tb;

wire [4:0] Counter_tb;
wire   	   High_tb;
wire	   Low_tb;	


initial 
	begin
		$dumpfile("Up_Down_Counter.vcd");
		$dumpvars;
		IN_tb = 5'b01101;
		Load_tb = 1'b0;
		Up_tb = 1'b0;
		Down_tb = 1'b0;
		CLK_tb = 1'b0;
		
		//wait for one clk cycle
		#10 
		$display("First Test Case"); // test load function
		Load_tb = 1'b1;
		#10
		if (Counter_tb == 5'b01101) 
			$display("First TEST CASE is Passed with counter value = %0h at simulation time",Counter_tb,$time);
		else 
			$display("First TEST CASE is Failed with counter value = %0h at simulation time",Counter_tb,$time);
		
		$display("Second Test Case"); // test load priority
		Load_tb = 1'b1;
		Down_tb = 1'b1;
		#10
		if (Counter_tb == 5'b01101) 
			$display("Second TEST CASE is Passed with counter value = %0h at simulation time",Counter_tb,$time);
		else 
			$display("Second TEST CASE is Failed with counter value = %0h at simulation time",Counter_tb,$time);

		$display("Third Test Case"); // test up function
		Load_tb = 1'b0;
		Down_tb = 1'b0;
		Up_tb = 1'b1;
		#10                          //wait for 1 clk cycles so counter has to go from 13 to 14(01110)
		if (Counter_tb == 5'b01110)
			$display("Third TEST CASE is Passed with counter value = %0h at simulation time",Counter_tb,$time);
		else 
			$display("Third TEST CASE is Failed with counter value = %0h at simulation time",Counter_tb,$time);		

		$display("Fourth Test Case"); // test down function
		Load_tb = 1'b0;
		Up_tb = 1'b0;
		Down_tb = 1'b1;
		#30                          //wait for 3 clk cycles so counter has to go back to 11 (01011)
		if (Counter_tb == 5'b01011)
			$display("Fourth TEST CASE is Passed with counter value = %0h at simulation time",Counter_tb,$time);
		else 
			$display("Fourth TEST CASE is Failed with counter value = %0h at simulation time",Counter_tb,$time);		

		$display("Fifth Test Case"); // test down priority
		Load_tb = 1'b0;
		Up_tb = 1'b1;
		Down_tb = 1'b1;
		#30                          //wait for 3 clk cycles so counter has to go from 11 to 8(01000)
		if (Counter_tb == 5'b01000)
			$display("Fifth TEST CASE is Passed with counter value = %0h at simulation time",Counter_tb,$time);
		else 
			$display("Fifth TEST CASE is Failed with counter value = %0h at simulation time",Counter_tb,$time);						

		$display("Sixth Test Case"); // test Down function (Low Flag test)
		Load_tb = 1'b0;
		Up_tb = 1'b0;
		Down_tb = 1'b1;
		#110                          //wait for 10 clk cycles so counter has to go from 10 to 0
		if (Counter_tb == 5'b0 && Low_tb == 1'b1)
			$display("Sixth TEST CASE is Passed with counter value = %0h at simulation time",Counter_tb,$time);
		else 
			$display("Sixth TEST CASE is Failed with counter value = %0h at simulation time",Counter_tb,$time);				
		#100
		$stop; //finish simulation
	end


// Clock generator
always#5	CLK_tb = ~CLK_tb;    // frequency = 100MHz

// Design instantiation
Up_Down_Counter DUt (

	.IN(IN_tb),
	.Load(Load_tb),
	.Up(Up_tb),
	.Down(Down_tb),
	.CLK(CLK_tb),
	.Counter(Counter_tb),
	.High(High_tb),
	.Low(Low_tb)
	);


endmodule