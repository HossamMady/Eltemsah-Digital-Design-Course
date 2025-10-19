module FSM (

	input   wire  			CLK,
	input   wire  			RST,
	input 	wire 				DATA_VALID,
	input 	wire  			ser_done,
	input  	wire				ser_busy,
	input 	wire  			PAR_EN,
	output 	reg 				ser_en,
	output  reg 				busy, // whole frame busy
	output  reg 	[2:0] Mux_Sel

);

//grey encoding for states
 typedef enum bit [2:0] {
 		
 		IDLE      = 3'b000,
    START     = 3'b001,
    DATA 		  = 3'b011,
    PARITY    = 3'b010,
    STOP      = 3'b110
}state_e;

//mux_sel index
 localparam [2:0] idle_out  = 3'b000,
                  start_bit = 3'b001,
                  ser_data  = 3'b011,
                  stop_bit  = 3'b010,
                  par_bit   = 3'b110;


state_e current_state , next_state;
reg		busy_comb;

// Transition Logic
always @(posedge CLK or negedge RST) 
	begin
		if (!RST) 
			begin
				// reset
				current_state <= IDLE;
			end
		else 
			begin
				current_state <= next_state;
			end
	end


// Next State Logic
always @(*) 
	begin
    // covers default case
    next_state = current_state;

    case (current_state)
        IDLE: begin
            		if (DATA_VALID) 
            			begin
            			  next_state = START;
            			end
								else 
									begin
										next_state = IDLE;
									end
       				end
        START: 	begin
        					// Enable ser_en
            			next_state = DATA;
        				end
        DATA: begin
            		if (ser_done) 
            			begin
            			    if (PAR_EN)
            			    	begin
            			    		next_state = PARITY;
            			    	end
            			    else
            			    	begin
            			        next_state = STOP;
            			      end
            			end
								else
									begin
										next_state = current_state;
									end
        			end
        PARITY: begin
            			next_state = STOP;
        				end
        STOP: begin
            		next_state = IDLE;
        			end
    endcase
	end

// Output Logic
always @(*) 
	begin
		// Defaults
    ser_en = 1'b0;
    Mux_Sel	= idle_out;

    case (current_state)
         IDLE: 	begin
             			Mux_Sel = idle_out;
									busy = (current_state != IDLE); // FSM busy covers whole frame
									if (DATA_VALID)
										begin
											ser_en = 1'b1;	
										end
         				end
         START: begin
             			Mux_Sel = start_bit;
									busy = (current_state != IDLE); // FSM busy covers whole frame
									ser_en  = 1'b1; // start serializer
         				end
         DATA: 	begin
					    		busy = (current_state != IDLE); // FSM busy covers whole frame
             			Mux_Sel = ser_data;
									if(!ser_busy)
										begin
											ser_en  = 1'b0;
										end
									else
										begin
											ser_en  = 1'b1; // keep serializer running
										end
         				end
         PARITY: 	begin
					    			busy = (current_state != IDLE); // FSM busy covers whole frame
             				Mux_Sel = par_bit;
         					end
         STOP: 	begin
						    	busy = (current_state != IDLE); // FSM busy covers whole frame
             			Mux_Sel = stop_bit;
         				end
    endcase
	end

endmodule
