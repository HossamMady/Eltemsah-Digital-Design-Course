`timescale 1us / 1ns

module ALU_TOP_tb();

  parameter OP_DATA_WIDTH = 8;
  parameter ARITH_OUT_WIDTH = OP_DATA_WIDTH * 2;
  parameter LOGIC_OUT_WIDTH = OP_DATA_WIDTH;
  parameter SHIFT_OUT_WIDTH = OP_DATA_WIDTH;
  parameter CMP_OUT_WIDTH = 3;

  // Inputs
  reg signed [OP_DATA_WIDTH-1:0] A_tb;
  reg signed [OP_DATA_WIDTH-1:0] B_tb;
  reg        [3:0]               ALU_FUN_tb;
  reg                            CLK_tb;
  reg                            RST_tb;

  // Outputs
  wire signed [ARITH_OUT_WIDTH-1:0] Arith_OUT_tb;
  wire                              Arith_flag_tb;
  wire signed [LOGIC_OUT_WIDTH-1:0] Logic_OUT_tb;
  wire                              Logic_flag_tb;
  wire signed [SHIFT_OUT_WIDTH-1:0] Shift_OUT_tb;
  wire                              Shift_flag_tb;
  wire signed [CMP_OUT_WIDTH-1:0]   CMP_OUT_tb;
  wire                              CMP_flag_tb;


   // Reset and test sequence
  initial begin
    $dumpfile("ALU_TOP.vcd");
    $dumpvars;
    // Initialize inputs
    A_tb = 0; B_tb = 0; 
    ALU_FUN_tb = 0;
    RST_tb = 1'b1;
    // ========== 1-4. Signed Addition ==========
    #15
    $display("Test 1: ADD, A-, B-");
    A_tb = -'d10; B_tb = -'d20; ALU_FUN_tb = 4'b0000; 
    #10
    if (Arith_OUT_tb == -30 && Arith_flag_tb == 1'b1) 
        $display("Addition test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("Addition test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 2: ADD, A+, B-");
    A_tb = 10; B_tb = -20; ALU_FUN_tb = 4'b0000;
    #10
    if (Arith_OUT_tb == -10 && Arith_flag_tb == 1'b1) 
        $display("Addition test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("Addition test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 3: ADD, A-, B+");
    A_tb = -10; B_tb = 20; ALU_FUN_tb = 4'b0000;
    #10
    if (Arith_OUT_tb == 10 && Arith_flag_tb == 1'b1) 
        $display("Addition test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("Addition test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 4: ADD, A+, B+");
    A_tb = 10; B_tb = 20; ALU_FUN_tb = 4'b0000;
    #10
    if (Arith_OUT_tb == 30 && Arith_flag_tb == 1'b1) 
        $display("Addition test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("Addition test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    // ========== 5-8. Signed Subtraction ==========
    $display("Test 5: SUB, A-, B-");
    A_tb = -30; B_tb = -10; ALU_FUN_tb = 4'b0001;
    #10
    if (Arith_OUT_tb == -20 && Arith_flag_tb == 1'b1) 
        $display("SUB test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("SUB test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 6: SUB, A+, B-");
    A_tb = 30; B_tb = -10; ALU_FUN_tb = 4'b0001;
    #10
    if (Arith_OUT_tb == 40 && Arith_flag_tb == 1'b1) 
        $display("SUB test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("SUB test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 7: SUB, A-, B+");
    A_tb = -30; B_tb = 10; ALU_FUN_tb = 4'b0001;
    #10
    if (Arith_OUT_tb == -40 && Arith_flag_tb == 1'b1) 
        $display("SUB test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("SUB test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 8: SUB, A+, B+");
    A_tb = 30; B_tb = 10; ALU_FUN_tb = 4'b0001;
    #10
    if (Arith_OUT_tb == 20 && Arith_flag_tb == 1'b1) 
        $display("SUB test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("SUB test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    // ========== 9-12. Signed Multiplication ==========
    $display("Test 9: MUL, A-, B-");
    A_tb = -5; B_tb = -4; ALU_FUN_tb = 4'b0010;
    #10
    if (Arith_OUT_tb == 20 && Arith_flag_tb == 1'b1) 
        $display("MUL test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("MUL test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10 

    $display("Test 10: MUL, A+, B-");
    A_tb = 5; B_tb = -4; ALU_FUN_tb = 4'b0010; 
    #10
    if (Arith_OUT_tb == -20 && Arith_flag_tb == 1'b1) 
        $display("MUL test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("MUL test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 11: MUL, A-, B+");
    A_tb = -5; B_tb = 4; ALU_FUN_tb = 4'b0010; 
    #10
    if (Arith_OUT_tb == -20 && Arith_flag_tb == 1'b1) 
        $display("MUL test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("MUL test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 12: MUL, A+, B+");
    A_tb = 5; B_tb = 4; ALU_FUN_tb = 4'b0010; 
    #10
    if (Arith_OUT_tb == 20 && Arith_flag_tb == 1'b1) 
        $display("MUL test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("MUL test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    // ========== 13-16. Signed Division ==========
    $display("Test 13: DIV, A-, B-");
    A_tb = -20; B_tb = -5; ALU_FUN_tb = 4'b0011;
    #10
    if (Arith_OUT_tb == 4 && Arith_flag_tb == 1'b1) 
        $display("DIV test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("DIV test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10
 

    $display("Test 14: DIV, A+, B-");
    A_tb = 20; B_tb = -5; ALU_FUN_tb = 4'b0011; 
    #10
    if (Arith_OUT_tb == -4 && Arith_flag_tb == 1'b1) 
        $display("DIV test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("DIV test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 15: DIV, A-, B+");
    A_tb = -20; B_tb = 5; ALU_FUN_tb = 4'b0011; 
    #10
    if (Arith_OUT_tb == -4 && Arith_flag_tb == 1'b1) 
        $display("DIV test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("DIV test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    $display("Test 16: DIV, A+, B+");
    A_tb = 20; B_tb = 5; ALU_FUN_tb = 4'b0011; 
    #10
    if (Arith_OUT_tb == 4 && Arith_flag_tb == 1'b1) 
        $display("DIV test case Passed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    else 
        $display("DIV test case Failed with result = %0d at simulation time %0t", Arith_OUT_tb, $time);
    #10

    // ========== 17-20. Logic Operations ==========
    $display("Test Case 17 : AND"); // test AND
    A_tb = 16'b1010101010101010;
    B_tb = 16'b1111000011110000;
    ALU_FUN_tb = 4'b0100;
    #10
    if ((Logic_OUT_tb == (A_tb & B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("AND test case Passed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);
    else 
        $display("AND test case Failed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);

    #10 
    $display("Test Case 18:OR"); // test OR
    A_tb = 16'b0000111100001111;
    B_tb = 16'b1111000011110000;
    ALU_FUN_tb = 4'b0101;
    #10
    if ((Logic_OUT_tb == (A_tb | B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("OR test case Passed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);
    else 
        $display("OR test case Failed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);

    #10 
    $display("Test Case 19 :NAND"); // test NAND
    A_tb = 16'hFFFF;
    B_tb = 16'h0F0F;
    ALU_FUN_tb = 4'b0110;
    #10
    if ((Logic_OUT_tb == ~(A_tb & B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("NAND test case Passed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);
    else 
        $display("NAND test case Failed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);
    #10 

    $display("Test Case 20:NOR"); // test NOR
    A_tb = 16'h0F0F;
    B_tb = 16'hF0F0;
    ALU_FUN_tb = 4'b0111;
    #10
    if ((Logic_OUT_tb == ~(A_tb | B_tb)) && (Logic_flag_tb == 1'b1)) 
        $display("NOR test case Passed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);
    else 
        $display("NOR test case Failed with result = %0b at simulation time %0t", Logic_OUT_tb, $time);
    #10 

    // ========== 21-23. Compare Operations ==========
    $display("Test 21: CMP Equal");
    A_tb = 25; B_tb = 25; ALU_FUN_tb = 4'b1001;
    #10
    if ((CMP_OUT_tb == 16'd1) && (CMP_flag_tb == 1'b1)) 
        $display("A == B test case Passed at simulation time %0t", $time);
    else 
        $display("A == B test case Failed at simulation time %0t", $time);
    #10 

    $display("Test 22: CMP Greater");
    A_tb = 30; B_tb = 20; ALU_FUN_tb = 4'b1010;
    #10
    if ((CMP_OUT_tb == 16'd2) && (CMP_flag_tb == 1'b1)) 
        $display("A > B test case Passed at simulation time %0t", $time);
    else 
        $display("A > B test case Failed at simulation time %0t", $time);
    #10  

    $display("Test 23: CMP Less");
    A_tb = 15; B_tb = 20; ALU_FUN_tb = 4'b1011;
    #10
    if ((CMP_OUT_tb == 16'd3) && (CMP_flag_tb == 1'b1)) 
        $display("A < B test case Passed at simulation time %0t", $time);
    else 
        $display("A < B test case Failed at simulation time %0t", $time);
    #10  

    // ========== 24-27. Shift Operations ==========
    $display("Test 24: A >>");
    A_tb = 16'b1000000000000000;
    B_tb = 16'd0;
    ALU_FUN_tb = 4'b1100;
    #10
    if ((Shift_OUT_tb == 16'b0100000000000000) && (Shift_flag_tb == 1'b1)) 
        $display("Shift Right test case Passed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    else 
        $display("Shift Right test case Failed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    #10 

    $display("Test 25: A <<");
    A_tb = 16'b0000000000000001;
    B_tb = 16'd0;
    ALU_FUN_tb = 4'b1101;
    #10
    if ((Shift_OUT_tb == 16'b0000000000000010) && (Shift_flag_tb == 1'b1)) 
        $display("Shift Left test case Passed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    else 
        $display("Shift Left test case Failed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    #10 

    $display("Test 26: B >>");
    B_tb = 16'b1000000000000000;
    A_tb = 16'd0;
    ALU_FUN_tb = 4'b1110;
    #10
    if ((Shift_OUT_tb == 16'b0100000000000000) && (Shift_flag_tb == 1'b1)) 
        $display("Shift Right test case Passed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    else 
        $display("Shift Right test case Failed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    #10 

    $display("Test 27: B <<");
    B_tb = 16'b0000000000000001;
    A_tb = 16'd0;
    ALU_FUN_tb = 4'b1111;
    #10
    if ((Shift_OUT_tb == 16'b0000000000000010) && (Shift_flag_tb == 1'b1)) 
        $display("Shift Left test case Passed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    else 
        $display("Shift Left test case Failed with result = %0b at simulation time %0t", Shift_OUT_tb, $time);
    #10  

    // ========== 28. NOP ==========
    $display("Test 28: NOP");
    A_tb = 16'd5; B_tb = 16'd0; ALU_FUN_tb = 4'b1000; 
    #10
    if (CMP_OUT_tb == 16'd0) 
        $display("NOP test case Passed with result = %0d at simulation time %0t", CMP_OUT_tb, $time);
    else 
        $display("NOP test case Failed with result = %0d at simulation time %0t", CMP_OUT_tb, $time);

    // ========== End of Simulation ==========
    $display("All 28 test cases completed.");
    #10 $stop;
  end


/* this clock generation also works fine */
  // Clock generation: 100 KHz, 60% High, 40% Low
  // always begin
  //  CLK_tb = 1'b1; #6; // 60% of 10us = 6us
  //  CLK_tb = 1'b0; #4; // 40% of 10us = 4us
  // end

    // Clock Period (more generic so better than the above one) (corrected)
    parameter  CLK_PERIOD  = 10 , //(10 us see the time scale above)
               HIGH_PERIOD = 0.6 * CLK_PERIOD , //(60% of 10us = 6us)
               LOW_PERIOD  = 0.4 * CLK_PERIOD ; //(40% of 10us = 4us)

    // Clock Generator with 100 KHz (10 us) 
    always  
     begin
      #LOW_PERIOD  CLK_TB = ~ CLK_TB ;
      #HIGH_PERIOD CLK_TB = ~ CLK_TB ;
     end
    /* momken kaman fe el test cases nafsha badL ma a3mel delay kad #10 */
    /* a3melo kda ahsan #CLK_PERIOD elly ana 3amlha define parameter */

  // Instantiate the Unit Under Test (UUT)
  ALU_TOP Dut (
    .A(A_tb),
    .B(B_tb),
    .ALU_FUN(ALU_FUN_tb),
    .CLK(CLK_tb),
    .RST(RST_tb),
    .Arith_OUT(Arith_OUT_tb),
    .Arith_flag(Arith_flag_tb),
    .Logic_OUT(Logic_OUT_tb),
    .Logic_flag(Logic_flag_tb),
    .Shift_OUT(Shift_OUT_tb),
    .Shift_flag(Shift_flag_tb),
    .CMP_OUT(CMP_OUT_tb),
    .CMP_flag(CMP_flag_tb)
  );

endmodule
