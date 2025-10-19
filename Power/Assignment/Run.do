vlib work 
vlog *.*v 
vsim -voptargs=+acc work.ClkDiv_tb 
do wave.do
run -all