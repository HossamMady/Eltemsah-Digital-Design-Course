module Door_controller (

input wire CLK,
input wire RST,
input wire DN_Max,
input wire UP_Max,
input wire Activate,
output reg UP_M,
output reg DN_M

);

// States Encoding (Gray for less power)
localparam IDLE  = 2'b00,
		   MV_UP = 2'b01,
		   MV_DN = 2'b11;

reg [1:0] current_state,
		  next_state;

// state transition
always @(posedge CLK or negedge RST) 
 begin
	if (!RST)  // reset to IDLE state
	 begin 
		current_state <= IDLE;
	 end
	else 
	 begin
		current_state <= next_state;        
	 end
 end

// next state logic
always @(*)   
 begin
  case (current_state)
  IDLE : begin
		 if (!Activate) 
		  begin
			next_state = IDLE;
		  end
		 else if (Activate && DN_Max && !UP_Max)
		  begin 
			next_state = MV_UP; // Open door
		  end
		 else 
		  begin
			next_state = MV_DN; // Close door       
		  end
		 end

  MV_UP :begin
		 if (UP_Max) // Fully opened
		  begin
			next_state = IDLE;
		  end
		 else 
		  begin
			next_state = MV_UP; // Open door        
		  end
		 end

  MV_DN :begin
		 if (DN_Max) // Fully closed
		  begin
			next_state = IDLE;
		  end
		 else 
		  begin
			next_state = MV_DN; // Close door       
		  end
		 end 

  default: begin
			next_state = IDLE;
		   end 
  endcase
 end

// output logic (Output depend only on current state)
always @(*)   
 begin
 UP_M = 1'b0;
 DN_M = 1'b0;
  case (current_state)
  IDLE : begin
			UP_M = 1'b0;
			DN_M = 1'b0;
		 end 

  MV_UP :begin
			UP_M = 1'b1;
			DN_M = 1'b0;
		 end 

  MV_DN :begin
			UP_M = 1'b0;
			DN_M = 1'b1;
		 end 

  default: begin
			UP_M = 1'b0;
			DN_M = 1'b0;
		   end 
  endcase
 end

 endmodule