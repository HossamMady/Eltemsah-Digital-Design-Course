vlib work 
vlog *.*v 
vsim -voptargs=+acc work.Async_fifo_tb
do wave.do
run -all