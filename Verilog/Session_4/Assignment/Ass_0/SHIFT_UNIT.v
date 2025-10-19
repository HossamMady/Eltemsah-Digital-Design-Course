module SHIFT_UNIT 

#( parameter IN_DATA_WIDTH ,
			 OUT_DATA_WIDTH
)(
	input wire 		  [IN_DATA_WIDTH-1:0]  A, // corrected (unsigned)
	input wire 		  [IN_DATA_WIDTH-1:0]  B, // corrected (unsigned)
	input wire [1:0]  				       ALU_FUN,
	input wire       			 	   	   CLK,
	input wire 						   	   Shift_Enable,
	input wire							   RST,
	output reg 		  [OUT_DATA_WIDTH-1:0] ALU_Shift, // corrected (unsigned)
	output reg  					       Shift_Flag
);

reg 		 [OUT_DATA_WIDTH-1:0] ALU_Shift_Comb;

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				// reset
				ALU_Shift <= {OUT_DATA_WIDTH{1'b0}};
			end
		else 
			begin
				ALU_Shift <= ALU_Shift_Comb;
				Shift_Flag <= 1'b1 ;	
			end
	end

always @(*) 
	begin
		if(Shift_Enable)
        	begin
        		// Activating Shift_Flag "LOW"
        		Shift_Flag = 1'b0 ;
        		case (ALU_FUN)
        		    2'b00: //SHIFT: A >> 1
        		    	begin
                    		ALU_Shift_Comb = A >>> 1; //Arithmetic right shift for unsigned
                    		Shift_Flag = 1'b1;
                		end       		       
		
        		    2'b01: //SHIFT: A << 1
        		        begin
                    		ALU_Shift_Comb = A << 1;
                    		Shift_Flag = 1'b1;
                		end    
		
        		     2'b10: //SHIFT: B >> 1
        		        begin
        		          	ALU_Shift_Comb = B >>> 1;
                    		Shift_Flag = 1'b1;
        		        end
		
        		     2'b11: //SHIFT: B << 1
        		        begin
        		            ALU_Shift_Comb = B << 1;
                    		Shift_Flag = 1'b1;
        		        end 
        		endcase
        	end
        
        else 
        	begin
        		ALU_Shift_Comb = {OUT_DATA_WIDTH{1'b0}};
        		Shift_Flag = 1'b0;

        	end
	end

endmodule