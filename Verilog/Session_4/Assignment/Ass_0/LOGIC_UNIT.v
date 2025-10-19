module LOGIC_UNIT 

#( parameter IN_DATA_WIDTH ,
			 OUT_DATA_WIDTH
)(
	input wire 		  [IN_DATA_WIDTH-1:0]  A, // corrected 
	input wire 		  [IN_DATA_WIDTH-1:0]  B, // corrected 
	input wire [1:0]  				       ALU_FUN,
	input wire       			 	   	   CLK,
	input wire 						   	   Logic_Enable,
	input wire 							   RST,
	output reg 		  [OUT_DATA_WIDTH-1:0] ALU_Logic, // corrected 
	output reg  					       Logic_Flag
);

reg 	 [OUT_DATA_WIDTH-1:0] ALU_Logic_Comb;

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				// reset
				ALU_Logic <= {OUT_DATA_WIDTH{1'b0}};
			end
		else 
			begin
				ALU_Logic <= ALU_Logic_Comb;
				Logic_Flag <=1'b1;	// corrected 	
			end
	end

always @(*) 
	begin
		if(Logic_Enable)
        	begin
        		// Activating Logic_Flag "LOW"
        		Logic_Flag = 1'b0 ;
        		case (ALU_FUN)
        		    2'b00: //Logic : AND
        		        begin
        		            ALU_Logic_Comb = A & B ;
                    		Logic_Flag = 1'b1;
        		        end
		
        		    2'b01: //Logic : OR
        		        begin
        		            ALU_Logic_Comb = A | B ;
                    		Logic_Flag = 1'b1;
        		        end 
		
        		    2'b10: //Logic : NAND
        		        begin
        		            ALU_Logic_Comb = ~(A & B) ;
                    		Logic_Flag = 1'b1;
        		        end
		
        		    2'b11: //Logic : NOR
        		        begin
        		            ALU_Logic_Comb = ~(A | B) ;
                    		Logic_Flag = 1'b1;
        		        end 
        		endcase
        	end
        
        else 
        	begin
        		ALU_Logic_Comb = {OUT_DATA_WIDTH{1'b0}};
        		Logic_Flag = 1'b0;

        	end
	end

endmodule