//`timescale 1ns/1ps

module ClkDiv_tb ();

parameter DIV_RATIO_TB = 8;

reg													i_ref_clk_tb;
reg													i_rst_tb;
reg													i_clk_en_tb;
reg		[DIV_RATIO_TB-1 : 0]	i_div_ratio_tb;
wire												o_div_clk_tb;

initial
	begin
		$dumpfile("ClkDiv.vcd");
    $dumpvars;	

    // Reset Asserted
    i_rst_tb = 1'b0 ;
   	#200
   	i_rst_tb = 1'b1;

   	i_ref_clk_tb = 1'b0 ;
   	i_rst_tb = 1'b1 ;
   	i_clk_en_tb = 1'b1 ;
   	i_div_ratio_tb = 'd2 ;
   	#200
   	i_div_ratio_tb = 'd3;
   	#200
   	i_div_ratio_tb = 'd4;
   	#200
   	i_div_ratio_tb = 'd5;
   	#200
   	i_div_ratio_tb = 'd6;
   	#200
   	i_div_ratio_tb = 'd7;
   	#200
   	i_div_ratio_tb = 'd0; // corner case
   	#200
   	i_div_ratio_tb = 'd1;	// corner case 
 		#200

 		i_clk_en_tb = 0;

   	#200
   	$stop ;

	end

always #10 i_ref_clk_tb = ~i_ref_clk_tb;


ClkDiv #(.DIV_RATIO(DIV_RATIO_TB)) DUT 
(

	.i_ref_clk(i_ref_clk_tb),
	.i_rst(i_rst_tb),
	.i_clk_en(i_clk_en_tb),
	.i_div_ratio(i_div_ratio_tb),
	.o_div_clk(o_div_clk_tb)

);

endmodule