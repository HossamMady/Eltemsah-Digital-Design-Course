module Serializer (
    input   wire        CLK,
    input   wire        RST,
    input   wire [7:0]  P_DATA,
    input   wire        Ser_en,    
    output  reg         Ser_done,
    output 	reg 		ser_busy,  
    output  reg         Ser_data   
);

// Internal connections
reg [7:0] shift_reg;
reg [2:0] bit_counter;


always @(posedge CLK or negedge RST) 
	begin
	    if (!RST) 
	    	begin
	    	    shift_reg   <= 8'b0;
	    	    bit_counter <= 3'b0;
	    	    Ser_done    <= 1'b0;
	    	    ser_busy    <= 1'b0;
	    	end 
	    else 
	    	begin
	    	    Ser_done <= 1'b0; // Default low unless finish
				//shift_reg <= P_DATA;
	    	    if (Ser_en && !ser_busy) 
	    	    	begin
	    	    	    // Load parallel data into shift register
	    	    	    shift_reg   <= P_DATA;
	    	    	    bit_counter <= 3'd7;
	    	    	    ser_busy    <= 1'b1;
	    	    	end
	    	    else if (ser_busy) 
	    	    	begin
	    	    	    Ser_data <= shift_reg[0];      // Output LSB first
	    	    	    if (bit_counter == 0) 
	    	    	    	begin
	    	    	    	    ser_busy <= 1'b0;
	    	    	    	    Ser_done <= 1'b1;  // Serialization complete
	    	    	    	end 
	    	    	    else 
	    	    	    	begin
	    	    	    		shift_reg <= shift_reg >> 1;    // Shift right
								if (ser_busy) 
									begin
										bit_counter <= bit_counter - 1;
									end
	    	    	    	end
	    	    	end
	    	end
	end

endmodule
