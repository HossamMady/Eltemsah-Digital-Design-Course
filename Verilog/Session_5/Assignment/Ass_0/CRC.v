module CRC 
#( 
	parameter SEED = 8'hD8 
)(
	input 		 wire DATA,
	input 		 wire ACTIVE,
	input 		 wire CLK,
	input 		 wire RST,
	output 		 reg CRC,
	output 		 reg Valid
);

reg 					feedback ;
wire 					count_max ;
reg 	[7:0] 	LFSR ;
reg 	[4:0]		count ;

//feedbak logic
always @(*) 
	begin
		feedback = DATA ^ LFSR[0];
	end

// counter to transmit the output through CRC port
always@(posedge CLK or negedge RST)
  begin
     if(!RST)
       count <= 5'b01000; // reset to 8 
     else if (ACTIVE) 
       count <= 5'b00000 ;				
     else if (!count_max) // count up till count equal 8
       count <= count + 5'b00001 ;				  
  end
assign count_max = ( count == 5'b1000 );

always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				LFSR <= SEED;
				Valid <= 1'b0;
				CRC <= 1'b0;
			end
		else 
			begin
				if (ACTIVE) 
					begin
            Valid <= 1'b0; 			  
						LFSR[0] <= LFSR[1];
						LFSR[1] <= LFSR[2];
						LFSR[2] <= LFSR[3] ^ feedback; 
            LFSR[3] <= LFSR[4];
            LFSR[4] <= LFSR[5];
            LFSR[5] <= LFSR[6];
            LFSR[6] <= LFSR[7] ^ feedback;
            LFSR[7] <= feedback;
					end
				else if(! count_max)
					begin
						Valid <= 1'b1;
						CRC <= LFSR[0];
						LFSR[0] <= LFSR[1];
						LFSR[1] <= LFSR[2];
						LFSR[2] <= LFSR[3]; 
            LFSR[3] <= LFSR[4];
            LFSR[4] <= LFSR[5];
            LFSR[5] <= LFSR[6];
            LFSR[6] <= LFSR[7];
					end
				else 
					begin
						CRC <= 1'b0;
						Valid <= 1'b0;
					end
			end
	end

endmodule 