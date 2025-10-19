
module Async_fifo #(
  parameter DATA_SIZE = 8 ,                      
  parameter ADD_SIZE = 3  ,                        
  parameter PTR_SIZE = 4  ,                        
  parameter FIFO_DEPTH = 8                         
)
 (
   input                        i_w_clk,              
   input                        i_w_rstn,               
   input                        i_w_inc,       
   input                        i_r_clk,             
   input                        i_r_rstn,              
   input                        i_r_inc,       
   input   [DATA_SIZE-1:0]      i_w_data,  
   output  [DATA_SIZE-1:0]      o_r_data,
   output                       o_full,   
   output                       o_empty    

);


wire [ADD_SIZE-1:0] r_addr , w_addr ;
wire [PTR_SIZE-1:0] w2r_ptr , r2w_ptr ;
wire [PTR_SIZE-1:0] gray_w_ptr , gray_rd_ptr ;

 
fifo_mem #(.FIFO_DEPTH(FIFO_DEPTH), .ADD_SIZE(3), .DATA_SIZE(8), .PTR_SIZE(4) )  u_fifo_mem (
.w_clk(i_w_clk),              
.w_rstn(i_w_rstn),
.w_inc(i_w_inc),                             
.w_full(o_full),              
.w_addr(w_addr),            
.r_addr(r_addr),
.w_data(i_w_data),                        
.r_data(o_r_data)
); 

DF_Sync #(.DATA_SIZE(4)) u_w2r_sync
(
.sync_clk(i_r_clk) ,
.sync_rstn(i_r_rstn) ,
.unsync_ip(gray_w_ptr) ,
.sync_op(w2r_ptr)
);


fifo_wr u_fifo_wr (            
.w_clk(i_w_clk),              
.w_rstn(i_w_rstn),             
.w_inc(i_w_inc),            
.sync_rd_ptr(r2w_ptr),                
.w_addr(w_addr),            
.gray_w_ptr(gray_w_ptr),        
.full(o_full)
);               


fifo_rd u_fifo_rd (
.r_clk(i_r_clk),              
.r_rstn(i_r_rstn),             
.r_inc(i_r_inc),              
.sync_wr_ptr(w2r_ptr),                
.rd_addr(r_addr),            
.gray_rd_ptr(gray_rd_ptr),        
.empty(o_empty)
);


DF_Sync #(.DATA_SIZE(4)) u_r2w_sync
(
.sync_clk(i_w_clk) ,
.sync_rstn(i_w_rstn) ,
.unsync_ip(gray_rd_ptr) ,
.sync_op(r2w_ptr)
);


endmodule
