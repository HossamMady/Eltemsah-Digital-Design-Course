
module ClkDiv #( 
  parameter DIV_RATIO = 8 
)
(
  input  wire                     i_ref_clk ,             
  input  wire                     i_rst ,                 
  input  wire                     i_clk_en,               
  input  wire [DIV_RATIO-1: 0]    i_div_ratio,           
  output wire                     o_div_clk               
);



reg  [DIV_RATIO-2 :0]   count ;
wire [DIV_RATIO-2 :0]   half_togg ;  
wire [DIV_RATIO-2 :0]   half_togg_p1 ;                                                                        
reg                     div_clk ;
reg                     odd_togg_flag ;               
wire                    is_one ;
wire                    is_zero;
wire                    clk_en;
wire                    is_odd;


always @(posedge i_ref_clk or negedge i_rst)               
  begin 
    if(!i_rst)
      begin
        count <= 0 ;
        div_clk <= 0 ;	
        odd_togg_flag <= 1 ;
      end
    else if(clk_en) 
      begin
        if(!is_odd && (count == half_togg))             
          begin
            count <= 0 ;                                        
            div_clk <= ~div_clk ;                               		
          end
        else if((is_odd && (count == half_togg) && odd_togg_flag ) || (is_odd && (count == half_togg_p1) && !odd_togg_flag ))  
          begin  
            count <= 0 ;                                       
            div_clk <= ~div_clk ;		                        
            odd_togg_flag <= ~odd_togg_flag ;                      
          end
        else
          begin
            count <= count + 1'b1 ;
          end
      end
  end


assign is_odd = i_div_ratio[0];
assign half_togg = ((i_div_ratio >> 1) - 1);
assign half_togg_p1 = (i_div_ratio >> 1);


// leeh msh sa7
// assign half_togg = (i_div_ratio >> 1);
// assign half_togg_p1 = i_div_ratio - half_togg; 
// It can be half_togg_p1 = half_togg + 1; 

// Corner Case
assign is_zero = ~|i_div_ratio ;                              
assign is_one  = (i_div_ratio == 1'b1) ;                       
assign clk_en = i_clk_en & !is_one & !is_zero;                 
assign o_div_clk = clk_en ? div_clk : i_ref_clk ;              

endmodule