module ARITHMETIC_UNIT 

#( parameter IN_DATA_WIDTH ,
			 OUT_DATA_WIDTH
)(
	input wire signed [IN_DATA_WIDTH-1:0]  A,
	input wire signed [IN_DATA_WIDTH-1:0]  B,
	input wire [1:0]  				       ALU_FUN,
	input wire       			 	   	   CLK,
	input wire 						   	   Arith_Enable,
	input wire 							   RST,
	output reg signed [OUT_DATA_WIDTH-1:0] ALU_Arith,
	output reg  					       Arith_Flag
);

reg signed [OUT_DATA_WIDTH-1:0] ALU_Arith_Comb;

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				// reset
				ALU_Arith <= {OUT_DATA_WIDTH{1'b0}};
			end
		else 
			begin
				ALU_Arith <= ALU_Arith_Comb;	
				Arith_Flag <=1'b1;	// corrected 
			end
	end


always @(*) 
    begin
        if(Arith_Enable)
        	begin
        		// Activating Arith_flag "LOW"
        		Arith_Flag = 1'b0 ;
        		case (ALU_FUN)
        		    2'b00: //Arithmatic : signed Addition
        		        begin
        		            ALU_Arith_Comb = A + B ;
        		            Arith_Flag = 1'b1;
        		        end
		
        		    2'b01: //Arithmatic : signed Subtraction
        		        begin
        		            ALU_Arith_Comb = A - B;
        		            Arith_Flag = 1'b1;
        		        end 
		
        		    2'b10: //Arithmatic : signed Multiplication
        		        begin
        		            ALU_Arith_Comb = A * B ;
        		            Arith_Flag = 1'b1;
        		        end
		
        		    2'b11: //Arithmatic : signed Division
        		        begin
        		            Arith_Flag = 1'b1;
        		            if (B != 0) // check to avoid dividing by zero 
        		                begin
        		                    ALU_Arith_Comb = A / B ;
        		                end
        		            else 
        		                begin
        		                   ALU_Arith_Comb = {OUT_DATA_WIDTH{1'b1}}; // ERROR 
        		                end
        		        end 
        		endcase
        	end
        
        else 
        	begin
        		ALU_Arith_Comb = {OUT_DATA_WIDTH{1'b0}};
        		Arith_Flag = 1'b0;

        	end
    end


endmodule
        