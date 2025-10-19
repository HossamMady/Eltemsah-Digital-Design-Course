module fifo_rd #(
	parameter PTR_SIZE = 4                          
)(
	input  wire                     	r_clk,            
	input  wire                     	r_rstn,             
	input  wire                     	r_inc,     
	input  wire   [PTR_SIZE-1:0]      sync_wr_ptr,              
	output wire   [PTR_SIZE-2:0]      rd_addr,            
	output wire                     	empty,
	output reg    [PTR_SIZE-1:0]      gray_rd_ptr        
);

reg [PTR_SIZE-1:0]  rd_ptr;
wire [PTR_SIZE-1:0]  comb_gray_rd_ptr;

// increment binary pointer
always @(posedge r_clk or negedge r_rstn)
 	begin
		if(!r_rstn)
	 		begin
				rd_ptr <= 0 ;
	 		end
 		else if (!empty && r_inc)
 			begin
				rd_ptr <= rd_ptr + 1 ;
			end
 	end


// generation of read address
assign rd_addr = rd_ptr[PTR_SIZE-2:0] ;


// converting binary read pointer to gray coded
/****                    another way                      ****/
/**** comb_gray_rd_ptr[PTR_SIZE-1] = rd_addr[PTR_SIZE-1]; ****/    // MSB stays the same
/**** comb_gray_rd_ptr[PTR_SIZE-1] = rd_addr[PTR_SIZE-2] ^ rd_addr[PTR_SIZE-1]; ****/

assign comb_gray_rd_ptr = rd_ptr ^ (rd_ptr >> 1);

always @(posedge r_clk or negedge r_rstn)
	begin
 		if(!r_rstn)
	 		begin
				gray_rd_ptr <= 0;
	 		end
 		else 
			begin
	 			gray_rd_ptr <= comb_gray_rd_ptr;
			end
 	end


// empty flag
assign empty = (sync_wr_ptr == comb_gray_rd_ptr) ;

endmodule
