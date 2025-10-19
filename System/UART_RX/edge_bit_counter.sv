module edge_bit_counter (

	input 	wire 				CLK,
	input		wire				RST,
	input		wire				edge_en,
	input		wire	[3:0]	prescale,
	output	reg		[3:0]	bit_cnt,
	output 	reg		[3:0]	edge_cnt
);

// Internal Signal 
reg	edge_counter_done;

always @(*) 
	begin
		if(edge_cnt == (prescale - 4'b1))
			begin
				edge_counter_done = 1'b1;
			end		
		else
			begin
				edge_counter_done = 1'b0;
			end
	end

//edge counter 
always @(posedge CLK or negedge RST)
 	begin
 	 if(!RST)
 	  	begin
 	  		edge_cnt <= 4'b0 ;
				bit_cnt <= 4'b0;
 	  	end
 	 else if(edge_en)
 	  	begin
 	   	if (edge_counter_done)
		 			begin
 	  			  edge_cnt <= 4'b0 ;
						bit_cnt <= bit_cnt + 4'b1;
		 			end
				else
		 			begin
 	  			  edge_cnt <= edge_cnt + 4'b1 ;
		 			end	
 	  	end 
 	 else
 	  begin
 	   	edge_cnt <= 4'b0 ;
		bit_cnt <= 4'b0;
 	  end   
 	end
 
endmodule




