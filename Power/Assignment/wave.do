onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ClkDiv_tb/DUT/DIV_RATIO
add wave -noupdate -color Yellow /ClkDiv_tb/DUT/i_ref_clk
add wave -noupdate /ClkDiv_tb/DUT/i_rst
add wave -noupdate /ClkDiv_tb/DUT/i_clk_en
add wave -noupdate /ClkDiv_tb/DUT/i_div_ratio
add wave -noupdate -color Magenta /ClkDiv_tb/DUT/o_div_clk
add wave -noupdate /ClkDiv_tb/DUT/count
add wave -noupdate /ClkDiv_tb/DUT/half_togg
add wave -noupdate /ClkDiv_tb/DUT/half_togg_p1
add wave -noupdate /ClkDiv_tb/DUT/div_clk
add wave -noupdate /ClkDiv_tb/DUT/odd_togg_flag
add wave -noupdate /ClkDiv_tb/DUT/is_one
add wave -noupdate /ClkDiv_tb/DUT/is_zero
add wave -noupdate /ClkDiv_tb/DUT/clk_en
add wave -noupdate /ClkDiv_tb/DUT/is_odd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {77 ns} 0}
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
WaveRestoreZoom {0 ns} {3675 ns}
