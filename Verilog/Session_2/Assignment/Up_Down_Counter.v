module Up_Down_Counter (

input wire [4:0]     IN,
input wire           Load,
input wire           Up,
input wire		 	 Down,
input wire 		     CLK,

output reg [4:0]     Counter,
output wire 		 High,		
output wire 		 Low   );

reg [4:0] Counter_comb; //internal connection

always @(posedge CLK) 
	begin
		Counter <= Counter_comb;		
	end

always @(*) 
	begin
		if (Load) 
			begin
				Counter_comb = IN;	
			end
		else if (Down && !Low) 
			begin
				Counter_comb = Counter - 5'b00001;
			end
		else if (Up && !High && Down) // corrected (see explanation in notes) 
			begin
				Counter_comb = Counter + 5'b00001;
			end
		else 
			begin
				Counter_comb = Counter;	
			end

	end

assign High = (Counter == 5'b11111) ;
assign Low = (Counter == 5'b0);

endmodule