
module Async_fifo_tb ;

parameter DATA_SIZE = 8 ;                       
parameter ADD_SIZE = 3  ;                       
parameter PTR_SIZE = 4  ;                    
parameter BURST_LEN = 9 ;                       
parameter FIFO_DEPTH = 8  ;                   
parameter Write_CLK_PERIOD = 10 ;          
parameter Read_CLK_PERIOD  = 25 ;         


reg                       i_w_clk;            
reg                       i_w_rstn;             
reg                       i_w_inc;      
reg                       i_r_clk;           
reg                       i_r_rstn;            
reg                       i_r_inc;       
reg   [DATA_SIZE-1:0]     i_w_data;     
wire  [DATA_SIZE-1:0]     o_r_data;     
wire                      o_full;            
wire                      o_empty;            


reg [DATA_SIZE-1:0] Burst_Words [BURST_LEN-1:0] ;

integer                       WR_WORD ;
integer                       RD_WORD ;

// WRITE Process
initial 
  begin
 
    $dumpfile("Async_fifo.vcd") ;    
    $dumpvars;                       
    
    // Read hexadeciemal values from stimulus txt file
    $readmemh("stimulus.txt",Burst_Words);             
    
    // Initialization
    initialize() ;
    
    // Reset
    wr_reset() ; 
    
    // Writing Successive Data into FIFO
    for (WR_WORD=0 ; WR_WORD<BURST_LEN ; WR_WORD=WR_WORD+1)
      begin
        WR_FIFO_DATA(Burst_Words[WR_WORD]) ;                   
      end
  end


// READ Process
initial 
  begin             

  
  // Read Domain Reset
  rd_reset() ; 
  
  wait(!o_empty) ;
  
  // Writing Successive Data into FIFO
  for (RD_WORD=0 ; RD_WORD<BURST_LEN ; RD_WORD=RD_WORD+1)
   begin
    RD_FIFO_DATA() ;                   
   end
  
   #(Read_CLK_PERIOD * 10);
  
  $stop();
  
  end

 


/////////////// Signals Initialization //////////////////

task initialize ;
  begin
    i_w_clk = 1'b0 ;
    i_r_clk = 1'b0 ;
    i_w_rstn = 1'b1 ;
    i_r_rstn = 1'b1 ; 
    i_w_inc = 1'b0 ;
    i_r_inc = 1'b0 ;
    i_w_data = 'd0;  	
  end
endtask

///////////////////////// RESET /////////////////////////

task wr_reset ;
 begin
  #(Write_CLK_PERIOD)
  i_w_rstn  = 'b0;           // Write Domain Rst is activated
  #(Write_CLK_PERIOD)
  i_w_rstn  = 'b1;           // Write Domain Rst is de-activated
  #(Write_CLK_PERIOD) ;
 end
endtask

task rd_reset ;
 begin
  #(Read_CLK_PERIOD/2)
  i_r_rstn  = 'b0;           // Read Domain Rst is activated  
  #(Read_CLK_PERIOD)
  i_r_rstn  = 'b1;           // Read Domain Rst is de-activated  
  #(Read_CLK_PERIOD/2) ;
 end
endtask

////////////////// Write FIFO Data ////////////////////

task WR_FIFO_DATA ;
 input  [DATA_SIZE-1:0]  DATA ;

 begin
    i_w_data = DATA ;   
    i_w_inc = 1'b1 ;
    #(Write_CLK_PERIOD);
    i_w_inc = 1'b0 ;
    #(Write_CLK_PERIOD);
    // Monitor Write Data Bus
    $display("[%0t] WRITE: %h", $time, i_w_data);
 end
endtask

////////////////// Read FIFO Data ////////////////////

task RD_FIFO_DATA ;

 begin
    i_r_inc = 1'b1 ;
    #(Read_CLK_PERIOD);
    i_r_inc = 1'b0 ;
    #(Read_CLK_PERIOD);
      // Monitor Read Data Bus
  $display("[%0t] READ : %h", $time, o_r_data);
 end
endtask


// Clock Generators
always #(Write_CLK_PERIOD/2)  i_w_clk = ~i_w_clk ;     // 10 ns period (100 MHz clock frequency)  
always #(Read_CLK_PERIOD/2)   i_r_clk = ~i_r_clk ;     // 25 ns period (40 MHz clock frequency) 


// Module Instantiation
Async_fifo # (.DATA_SIZE(DATA_SIZE), 
              .FIFO_DEPTH(FIFO_DEPTH),
              .ADD_SIZE(ADD_SIZE),
              .PTR_SIZE(PTR_SIZE)) DUT 
(
  .i_w_clk(i_w_clk),      
  .i_r_clk(i_r_clk),      
  .i_w_rstn(i_w_rstn),          
  .i_r_rstn(i_r_rstn),        
  .i_r_inc(i_r_inc),    
  .i_w_inc(i_w_inc),       
  .i_w_data(i_w_data),       
  .o_r_data(o_r_data),     
  .o_full(o_full),     
  .o_empty(o_empty)
);

endmodule