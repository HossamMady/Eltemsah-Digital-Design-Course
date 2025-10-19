onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /RST_SYNC_tb/DUT/NUM_STAGES
add wave -noupdate -color Magenta /RST_SYNC_tb/DUT/RST
add wave -noupdate -color Yellow /RST_SYNC_tb/DUT/CLK
add wave -noupdate /RST_SYNC_tb/DUT/SYNC_RST
add wave -noupdate -radix binary /RST_SYNC_tb/DUT/sync_reg
add wave -noupdate /RST_SYNC_tb/DUT/I
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {75 ns} 0}
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
WaveRestoreZoom {0 ns} {205 ns}
