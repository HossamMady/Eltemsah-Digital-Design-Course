`timescale 1ns/1ps

module DATA_SYNC_tb ();
 
parameter NUM_STAGES_TB = 3;
parameter BUS_WIDTH_TB  = 8; 

reg                           	CLK_tb;
reg                           	RST_tb;
reg								bus_enable_tb;
reg      [BUS_WIDTH_TB-1:0]   	unsync_bus_tb;
wire     [BUS_WIDTH_TB-1:0]   	sync_bus_tb;
wire							enable_pulse_tb;



////////// Initial Block ////////
initial
begin

CLK_tb = 1'b0 ;
RST_tb = 1'b0 ;
bus_enable_tb = 1'b0;
unsync_bus_tb = 8'h00;

#10
RST_tb = 1'b1;


#20
bus_enable_tb = 1'b1;
unsync_bus_tb = 8'h17;
#30
bus_enable_tb = 1'b0;

#20
bus_enable_tb = 1'b1;
unsync_bus_tb = 8'hA8;
#10
bus_enable_tb = 1'b0;

#100 ;
$stop ;
    
end  

////////// Clock Generation /////////

always #5 CLK_tb = ~CLK_tb ;

///////////// Instantiation ///////////
					 
DATA_SYNC # ( .NUM_STAGES(NUM_STAGES_TB) , .BUS_WIDTH(BUS_WIDTH_TB) )  DUT
(

.CLK(CLK_tb),
.RST(RST_tb),
.bus_enable(bus_enable_tb),
.unsync_bus(unsync_bus_tb),
.sync_bus(sync_bus_tb),
.enable_pulse(enable_pulse_tb)
);

endmodule
