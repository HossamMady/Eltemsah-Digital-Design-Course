module Data_Sampling (

 input   	wire        		CLK,
 input   	wire        		RST,
 input   	wire        		RX_IN,
 input   	wire   [3:0]		prescale,
 input   	wire   [3:0]		edge_cnt,
 input   	wire        		dat_samp_en, 
 output  	reg         		sampled_bit	
// output		reg							sampled_bit_d
);

              
reg  [2:0]    Samples ;

wire [4:0]    half_edges ,
              edge_after_half ,
			  			edge_before_half ;

/*	Divide by 2 (shift right) the minus 1 because I start 
		counting from edge zero not one*/ 
assign 	half_edges    = (prescale >> 1) - 'b1 ;
assign 	half_edges_p1 =  half_edges + 'b1 ;
assign 	half_edges_n1 =  half_edges - 'b1 ;

// this block is for delayed sample bit for the parity check only
//always @(posedge CLK or negedge RST)
//	begin
//		if (!RST) 
//			begin
//				sampled_bit_d <= 1'b0;	
//			end
//		else if (edge_cnt == (prescale - 1))
//			begin
//				sampled_bit_d <= sampled_bit;
//			end
//	end

always @ (posedge CLK or negedge RST)
 	begin
 	 	if(!RST)
 	 	 	begin
 	 	 	 Samples <= 3'b0 ;
 	 	 	end
 	 	else 
 	 	 	begin
 	 	 	 	if(dat_samp_en) 
					begin
						if(edge_cnt == half_edges_n1)
 	 	 	 	  	 	begin
 	 	 	 	  	 	 Samples[0] <= RX_IN ;
 	 	 	 	  	 	end	
 	 	 	 	  	else if(edge_cnt == half_edges)
 	 	 	 	  	 	begin
 	 	 	 	  	 	 Samples[1] <= RX_IN ;
 	 	 	 	  	 	end	
 	 	 	 	  	else if(edge_cnt == half_edges_p1)
 	 	 	 	  	 	begin
 	 	 	 	  	 	 Samples[2] <= RX_IN ;
 	 	 	 	  	 	end
 	 	 	 		end
 	 	 		else
 	 	 	 	 	begin
 	 	 	 	 	 	Samples <= 3'b0 ;
 	 	 	 	 	end 
 	 	 	end	 
 	end
 

always @ (posedge CLK or negedge RST)
 	begin
 	 	if(!RST)
 	 	 	begin
 	 	 	 	sampled_bit <= 1'b0 ;
 	 	 	end
 	 	else
 	  	begin
 	  	 	if(dat_samp_en) 
			 		begin
 	  	   		case (Samples)
 	  	   		3'b000 : begin
 	  	   		          sampled_bit <= 1'b0 ;
 	  	   		         end	
 	  	   		3'b001 : begin
 	  	   		          sampled_bit <= 1'b0 ;
 	  	   		         end
 	  	   		3'b010 : begin
 	  	   		          sampled_bit <= 1'b0 ;
 	  	   		         end	
 	  	   		3'b011 : begin
 	  	   		          sampled_bit <= 1'b1 ;
 	  	   		         end	
 	  	   		3'b100 : begin
 	  	   		          sampled_bit <= 1'b0 ;
 	  	   		         end
 	  	   		3'b101 : begin
 	  	   		          sampled_bit <= 1'b1 ;
 	  	   		         end	
 	  	   		3'b110 : begin
 	  	   		          sampled_bit <= 1'b1 ;
 	  	   		         end
 	  	   		3'b111 : begin
 	  	   		          sampled_bit <= 1'b1 ;
 	  	   		         end
 	  	   		endcase
 	  	  	end
 	  	 	else
 	  	  	begin
 	  	  		sampled_bit <= 1'b0 ;
 	  	  	end	 
 	  	end
 	end 


endmodule
 