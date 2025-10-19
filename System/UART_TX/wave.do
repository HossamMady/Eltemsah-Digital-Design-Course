onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TOP_Module -color Yellow /UART_TX_tb/DUT/CLK
add wave -noupdate -expand -group TOP_Module /UART_TX_tb/DUT/RST
add wave -noupdate -expand -group TOP_Module -radix binary /UART_TX_tb/DUT/P_DATA
add wave -noupdate -expand -group TOP_Module -color Orange /UART_TX_tb/DUT/DATA_VALID
add wave -noupdate -expand -group TOP_Module /UART_TX_tb/DUT/PAR_EN
add wave -noupdate -expand -group TOP_Module /UART_TX_tb/DUT/PAR_TYP
add wave -noupdate -expand -group TOP_Module -color Magenta /UART_TX_tb/DUT/BUSY
add wave -noupdate -expand -group TOP_Module -color Blue /UART_TX_tb/DUT/TX_OUT
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/current_state
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/next_state
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/ser_data_top
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/U0_Serializer/Ser_data
add wave -noupdate -expand -group Serializer -radix binary /UART_TX_tb/DUT/U0_Serializer/shift_reg
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/U0_Serializer/bit_counter
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/ser_en_top
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/U0_Serializer/Ser_en
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/ser_done_top
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/U0_Serializer/Ser_done
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/ser_busy_top
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/U0_Serializer/ser_busy
add wave -noupdate -expand -group PARITY /UART_TX_tb/DUT/par_bit_top
add wave -noupdate -expand -group PARITY /UART_TX_tb/DUT/U0_Parity_Calc/Par_bit
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/U0_MUX/Mux_Sel
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/mux_sel_top
add wave -noupdate /UART_TX_tb/DUT/U0_MUX/idle_sel
add wave -noupdate /UART_TX_tb/DUT/U0_MUX/start_sel
add wave -noupdate /UART_TX_tb/DUT/U0_MUX/ser_data_sel
add wave -noupdate /UART_TX_tb/DUT/U0_MUX/stop_bit_sel
add wave -noupdate /UART_TX_tb/DUT/U0_MUX/par_bit_sel
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12735 ps} 0}
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
WaveRestoreZoom {0 ps} {38764 ps}
