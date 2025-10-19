//time_unit = 1us & time percision = 1ns
`timescale 1us/1ns 

module ALU_16B_tb ();

reg [15:0] A_tb;
reg [15:0] B_tb;
reg [3:0]  ALU_FUN_tb;
reg        CLK_tb;

wire [15:0] ALU_OUT_tb;
wire        Carry_Flag_tb;
wire        Arith_flag_tb;
wire        Logic_flag_tb;
wire        CMP_flag_tb;
wire        Shift_flag_tb; 


initial 
    begin
        $dumpfile("ALU_16B.vcd");
		$dumpvars;

        CLK_tb = 1'b0;
        A_tb = 16'h0;
        B_tb = 16'h0;
        ALU_FUN_tb = 4'h0;
        
    //test cases
    //wait for one clk cycle
    	#10 
    $display("Add Test Case"); // test Add function
    A_tb = 16'd10;
    B_tb = 16'd20;
    ALU_FUN_tb = 4'b0000;
    #10
    if (ALU_OUT_tb == 16'd30 && Arith_flag_tb == 1'b1) 
        $display("Addition test case Passed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("Addition test case Failed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("Overflow Test Case - ADD with Carry"); // Test carry flag
    A_tb = 16'hFFFF;     // 65535
    B_tb = 16'd1;        // +1
    ALU_FUN_tb = 4'b0000; 
    #10
    if (Carry_Flag_tb == 1'b1 && ALU_OUT_tb == 16'd0)
        $display("Carry Flag test Passed! Result = %0d, Carry = %b at time %t", ALU_OUT_tb, Carry_Flag_tb, $time);
    else
    $display("Carry Flag test Failed! Result = %0d, Carry = %b at time %t", ALU_OUT_tb, Carry_Flag_tb, $time);

    #10 
    $display("Subtract Test Case"); // test Subtraction
    A_tb = 16'd15;
    B_tb = 16'd10;
    ALU_FUN_tb = 4'b0001;
    #10
    if (ALU_OUT_tb == 16'd5 && Arith_flag_tb == 1'b1) 
        $display("Subtraction test case Passed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("Subtraction test case Failed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("Multiply Test Case"); // test Multiplication
    A_tb = 16'd4;
    B_tb = 16'd5;
    ALU_FUN_tb = 4'b0010;
    #10
    if (ALU_OUT_tb == 16'd20 && Arith_flag_tb == 1'b1) 
        $display("Multiplication test case Passed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("Multiplication test case Failed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("Divide Test Case"); // test Division
    A_tb = 16'd20;
    B_tb = 16'd4;
    ALU_FUN_tb = 4'b0011;
    #10
    if (ALU_OUT_tb == 16'd5 && Arith_flag_tb == 1'b1) 
        $display("Division test case Passed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("Division test case Failed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("Division by Zero Test Case"); // Test div by zero
    A_tb = 16'd100;
    B_tb = 16'd0;
    ALU_FUN_tb = 4'b0011; // Assuming 0110 is division
    #10
    if (ALU_OUT_tb == 16'hFFFF) // FFFF = ERROR
        $display("Division by Zero handled gracefully. Result = %0h at time %t", ALU_OUT_tb, $time);
    else
        $display("Division by Zero test Failed. Unexpected result = %0d at time %t", ALU_OUT_tb, $time);

    #10 
    $display("And Test Case"); // test AND
    A_tb = 16'b1010101010101010;
    B_tb = 16'b1111000011110000;
    ALU_FUN_tb = 4'b0100;
    #10
    if ((ALU_OUT_tb == (A_tb & B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("AND test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("AND test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("OR Test Case"); // test OR
    A_tb = 16'b0000111100001111;
    B_tb = 16'b1111000011110000;
    ALU_FUN_tb = 4'b0101;
    #10
    if ((ALU_OUT_tb == (A_tb | B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("OR test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("OR test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("NAND Test Case"); // test NAND
    A_tb = 16'hFFFF;
    B_tb = 16'h0F0F;
    ALU_FUN_tb = 4'b0110;
    #10
    if ((ALU_OUT_tb == ~(A_tb & B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("NAND test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("NAND test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("NOR Test Case"); // test NOR
    A_tb = 16'h0F0F;
    B_tb = 16'hF0F0;
    ALU_FUN_tb = 4'b0111;
    #10
    if ((ALU_OUT_tb == ~(A_tb | B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("NOR test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("NOR test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("XOR Test Case"); // test XOR
    A_tb = 16'hAAAA;
    B_tb = 16'h5555;
    ALU_FUN_tb = 4'b1000;
    #10
    if ((ALU_OUT_tb == (A_tb ^ B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("XOR test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("XOR test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("XNOR Test Case"); // test XNOR
    A_tb = 16'hAAAA;
    B_tb = 16'h5555;
    ALU_FUN_tb = 4'b1001;
    #10
    if ((ALU_OUT_tb == ~(A_tb ^ B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("XNOR test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("XNOR test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("Equal Test Case"); // A == B
    A_tb = 16'd50;
    B_tb = 16'd50;
    ALU_FUN_tb = 4'b1010;
    #10
    if ((ALU_OUT_tb == 16'd1) && (CMP_flag_tb == 1'b1)) 
        $display("A == B test case Passed at simulation time %0t", $time);
    else 
        $display("A == B test case Failed at simulation time %0t", $time);

    #10 
    $display("Not Equal Test Case"); // A != B
    A_tb = 16'd50;
    B_tb = 16'd55;
    ALU_FUN_tb = 4'b1010;
    #10
    if ((ALU_OUT_tb == 16'd0) && (CMP_flag_tb == 1'b1)) 
        $display("A != B test case Passed at simulation time %0t", $time);
    else 
        $display("A != B test case Failed at simulation time %0t", $time);

    #10 
    $display("Greater than Test Case"); // A > B
    A_tb = 16'd60;
    B_tb = 16'd40;
    ALU_FUN_tb = 4'b1011;
    #10
    if ((ALU_OUT_tb == 16'd2) && (CMP_flag_tb == 1'b1)) 
        $display("A > B test case Passed at simulation time %0t", $time);
    else 
        $display("A > B test case Failed at simulation time %0t", $time);

    #10 
    $display("Smaller than Test Case"); // A < B
    A_tb = 16'd30;
    B_tb = 16'd45;
    ALU_FUN_tb = 4'b1100;
    #10
    if ((ALU_OUT_tb == 16'd3) && (CMP_flag_tb == 1'b1)) 
        $display("A < B test case Passed at simulation time %0t", $time);
    else 
        $display("A < B test case Failed at simulation time %0t", $time);

    #10 
    $display("Shift Right Test Case"); // Shift Right
    A_tb = 16'b1000000000000000;
    B_tb = 16'd0;
    ALU_FUN_tb = 4'b1101;
    #10
    if ((ALU_OUT_tb == 16'b0100000000000000) && (Shift_flag_tb == 1'b1)) 
        $display("Shift Right test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("Shift Right test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("Shift left Test Case"); // Shift Left
    A_tb = 16'b0000000000000001;
    B_tb = 16'd0;
    ALU_FUN_tb = 4'b1110;
    #10
    if ((ALU_OUT_tb == 16'b0000000000000010) && (Shift_flag_tb == 1'b1)) 
        $display("Shift Left test case Passed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("Shift Left test case Failed with result = %0b at simulation time %0t", ALU_OUT_tb, $time);

    #10 
    $display("NOP Test Case"); // Default (Zero Output)
    A_tb = 16'd123;
    B_tb = 16'd456;
    ALU_FUN_tb = 4'b1111;
    #10
    if (ALU_OUT_tb == 16'd0) 
        $display("Default test case Passed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);
    else 
        $display("Default test case Failed with result = %0d at simulation time %0t", ALU_OUT_tb, $time);
    
    #100
    $stop; //finish simulation
    end






// Clock Generator (toogle each 5us to get 100KHz freqeuncy)
always#5 CLK_tb = ~CLK_tb ;

// Design inistantiation
ALU_16B DUt (

    .A(A_tb),
    .B(B_tb),
    .ALU_FUN(ALU_FUN_tb),
    .CLK(CLK_tb),
    .ALU_OUT(ALU_OUT_tb),
    .Carry_Flag(Carry_Flag_tb),
    .Arith_flag(Arith_flag_tb),
    .Logic_flag(Logic_flag_tb),
    .CMP_flag(CMP_flag_tb),
    .Shift_flag(Shift_flag_tb)
    );

endmodule
