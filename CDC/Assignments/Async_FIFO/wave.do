onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Async_fifo_tb/DUT/DATA_SIZE
add wave -noupdate /Async_fifo_tb/DUT/ADD_SIZE
add wave -noupdate /Async_fifo_tb/DUT/PTR_SIZE
add wave -noupdate /Async_fifo_tb/DUT/FIFO_DEPTH
add wave -noupdate -color Yellow /Async_fifo_tb/DUT/i_w_clk
add wave -noupdate /Async_fifo_tb/DUT/i_w_rstn
add wave -noupdate /Async_fifo_tb/DUT/i_w_inc
add wave -noupdate -color {Blue Violet} /Async_fifo_tb/DUT/i_r_clk
add wave -noupdate /Async_fifo_tb/DUT/i_r_rstn
add wave -noupdate /Async_fifo_tb/DUT/i_r_inc
add wave -noupdate -color Magenta /Async_fifo_tb/DUT/i_w_data
add wave -noupdate -color Magenta /Async_fifo_tb/DUT/o_r_data
add wave -noupdate -color {Sky Blue} /Async_fifo_tb/DUT/o_full
add wave -noupdate -color Brown /Async_fifo_tb/DUT/o_empty
add wave -noupdate /Async_fifo_tb/DUT/r_addr
add wave -noupdate /Async_fifo_tb/DUT/w_addr
add wave -noupdate /Async_fifo_tb/DUT/w2r_ptr
add wave -noupdate /Async_fifo_tb/DUT/r2w_ptr
add wave -noupdate -radix binary /Async_fifo_tb/DUT/gray_w_ptr
add wave -noupdate -radix binary /Async_fifo_tb/DUT/gray_rd_ptr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {507 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {823 ns}
