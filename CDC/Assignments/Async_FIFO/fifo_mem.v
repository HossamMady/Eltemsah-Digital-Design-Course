module fifo_mem #(
	parameter ADD_SIZE = 3 ,                       
	parameter DATA_SIZE = 8 ,                       
	parameter FIFO_DEPTH = 8 ,                      
	parameter PTR_SIZE = 4                          
)(   
	input   wire                 			w_clk,              
	input   wire                 			w_rstn,                    
	input   wire                 			w_full,      
	input   wire                 			w_inc,              
	input   wire	[ADD_SIZE-1:0]     	w_addr,             
	input   wire	[ADD_SIZE-1:0]     	r_addr,             
	input   wire	[DATA_SIZE-1:0]    	w_data,             
	output  wire	[DATA_SIZE-1:0]    	r_data
);

//row ptr
reg [FIFO_DEPTH-1:0] i ;

//FIFO Memory
reg [DATA_SIZE-1:0] FIFO_MEM [FIFO_DEPTH-1:0] ;


// writing data
always @(posedge w_clk or negedge w_rstn)
 	begin
		if(!w_rstn)
		 	begin 
				for(i=0;i<FIFO_DEPTH;i=i+1) 
			 		FIFO_MEM[i] <= {DATA_SIZE{1'b0}};
		 	end
 		else if (!w_full && w_inc)
 			begin
				FIFO_MEM[w_addr] <= w_data ;
			end
 	end

// reading operation
assign r_data = FIFO_MEM[r_addr] ;

endmodule
