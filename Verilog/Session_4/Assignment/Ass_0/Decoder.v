module Decoder (

	input wire [1:0] IN,
	output reg [3:0] OUT );

always @(*) 
	begin
		case (IN)
			2'b00: //Arithmatic Enable
				begin
					OUT = 4'b1000;
				end
			2'b01: //Logic Enable
				begin
					OUT = 4'b0100;
				end
			2'b10: //CMP Enable
				begin
					OUT = 4'b0010;
				end
			2'b11: //Shift Enable
				begin
					OUT = 4'b0001;
				end
		endcase
	end

endmodule