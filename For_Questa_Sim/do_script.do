vlib work //work library in simulation
vlog *.*v // to get verilog and system verilog files
vsim -voptargs=+acc work.UART_TX_tb //module name
do wave.do
run -all