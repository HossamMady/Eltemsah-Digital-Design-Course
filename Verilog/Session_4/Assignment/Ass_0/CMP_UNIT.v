module CMP_UNIT 

#( parameter IN_DATA_WIDTH ,
			 OUT_DATA_WIDTH 
)(
	input wire signed [IN_DATA_WIDTH-1:0]  A,
	input wire signed [IN_DATA_WIDTH-1:0]  B,
	input wire [1:0]  				       ALU_FUN,
	input wire       			 	   	   CLK,
	input wire 						       CMP_Enable,
	input wire							   RST,
	output reg signed [OUT_DATA_WIDTH-1:0] ALU_CMP,
	output reg  					       CMP_Flag
);

reg signed [OUT_DATA_WIDTH-1:0] ALU_CMP_Comb;

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				// reset
				ALU_CMP <= {OUT_DATA_WIDTH{1'b0}};
			end
		else 
			begin
				ALU_CMP <= ALU_CMP_Comb;
				CMP_Flag <=1'b1;	// corrected 
			end
	end


always @(*) 
	begin
		if(CMP_Enable)
        	begin
        		// Activating CMP_Flag "LOW"
        		CMP_Flag = 1'b0 ;
        		case (ALU_FUN)
        		    2'b00: //NOP
        		        begin
        		        	CMP_Flag =1'b1;
        		        	ALU_CMP_Comb = {OUT_DATA_WIDTH{1'b0}}; //concatenation for'0'
        		        end
		
        		    2'b01: //CMP: A = B
        		        begin
        				    CMP_Flag =1'b1;
                		    if (A == B) 
                		        begin
                		            ALU_CMP_Comb = {{(OUT_DATA_WIDTH-1){1'b0}}, 1'b1}; //concatenation for'1'
                		        end
                		    else
                		        begin
                		            ALU_CMP_Comb = {OUT_DATA_WIDTH{1'b0}};    
                		        end
        		        end 
		
        		    2'b10: //CMP: A > B
        		        begin
        		           CMP_Flag =1'b1;
                		    if (A > B) 
                		        begin
                		           ALU_CMP_Comb = {{(OUT_DATA_WIDTH-2){1'b0}}, 2'b10}; //concatenation for'2'
                		        end
                		    else
                		        begin
                		            ALU_CMP_Comb = {OUT_DATA_WIDTH{1'b0}};    
                		        end
        		        end
		
        		    2'b11: //CMP: A < B
        		        begin
        		            CMP_Flag =1'b1;
                		    if (A < B) 
                		        begin
                		            ALU_CMP_Comb = {{(OUT_DATA_WIDTH-2){1'b0}}, 2'b11}; //concatenation for'3'
                		        end
                		    else
                		        begin
                		            ALU_CMP_Comb = {OUT_DATA_WIDTH{1'b0}};    
                		        end
        		        end 
        		endcase
        	end
        
        else 
        	begin
        		ALU_CMP_Comb = {OUT_DATA_WIDTH{1'b0}};
        		CMP_Flag = 1'b0;

        	end
	end

endmodule