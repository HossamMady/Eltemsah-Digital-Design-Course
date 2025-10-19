onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /DATA_SYNC_tb/DUT/NUM_STAGES
add wave -noupdate /DATA_SYNC_tb/DUT/BUS_WIDTH
add wave -noupdate -color Yellow /DATA_SYNC_tb/DUT/CLK
add wave -noupdate /DATA_SYNC_tb/DUT/RST
add wave -noupdate -color Magenta /DATA_SYNC_tb/DUT/bus_enable
add wave -noupdate /DATA_SYNC_tb/DUT/unsync_bus
add wave -noupdate /DATA_SYNC_tb/DUT/sync_bus
add wave -noupdate /DATA_SYNC_tb/DUT/enable_pulse
add wave -noupdate /DATA_SYNC_tb/DUT/sync_reg
add wave -noupdate /DATA_SYNC_tb/DUT/enable_flop
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {34604 ps} 0}
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
WaveRestoreZoom {0 ps} {157500 ps}
