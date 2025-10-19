module fifo_wr #(
  parameter PTR_SIZE = 4                         
)(
  input  wire                       w_clk,              
  input  wire                       w_rstn,              
  input  wire                       w_inc,       
  input  wire  [PTR_SIZE-1:0]       sync_rd_ptr,                 
  output wire  [PTR_SIZE-2:0]       w_addr,             
  output reg   [PTR_SIZE-1:0]       gray_w_ptr,        
  output wire                       full                
);

reg [PTR_SIZE-1:0]  w_ptr ;
wire [PTR_SIZE-1:0]  comb_gray_w_ptr ;

// increment binary pointer
always @(posedge w_clk or negedge w_rstn)
  begin
    if(!w_rstn)
      begin
        w_ptr <= 0 ;
      end
    else if (!full && w_inc)
      begin  
        w_ptr <= w_ptr + 1 ;
      end
 end


// generation of write address
assign w_addr = w_ptr[PTR_SIZE-2:0] ;

// converting binary write pointer to gray coded

assign comb_gray_w_ptr = w_ptr ^ (w_ptr >> 1);

always @(posedge w_clk or negedge w_rstn)
  begin
    if(!w_rstn)
      begin
        gray_w_ptr <= 0 ;
      end
    else
      begin
        gray_w_ptr <= comb_gray_w_ptr;
      end
  end


// full flag
assign full = (sync_rd_ptr[PTR_SIZE-1]!= comb_gray_w_ptr[PTR_SIZE-1] && sync_rd_ptr[PTR_SIZE-2]!= comb_gray_w_ptr[PTR_SIZE-2] && sync_rd_ptr[PTR_SIZE-3:0]== comb_gray_w_ptr[PTR_SIZE-3:0]) ;



endmodule

