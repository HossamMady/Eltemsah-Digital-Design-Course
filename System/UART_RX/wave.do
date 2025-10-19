onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow /UART_RX_TB/DUT/CLK
add wave -noupdate /UART_RX_TB/DUT/RST
add wave -noupdate -color Aquamarine /UART_RX_TB/DUT/RX_IN
add wave -noupdate /UART_RX_TB/DUT/prescale
add wave -noupdate /UART_RX_TB/DUT/PAR_EN
add wave -noupdate /UART_RX_TB/DUT/PAR_TYP
add wave -noupdate /UART_RX_TB/DUT/P_DATA
add wave -noupdate -color Magenta /UART_RX_TB/DUT/par_err
add wave -noupdate /UART_RX_TB/DUT/stp_err
add wave -noupdate /UART_RX_TB/DUT/data_valid
add wave -noupdate /UART_RX_TB/DUT/edge_cnt
add wave -noupdate /UART_RX_TB/DUT/bit_cnt
add wave -noupdate /UART_RX_TB/DUT/strt_glitch
add wave -noupdate /UART_RX_TB/DUT/edge_en
add wave -noupdate /UART_RX_TB/DUT/dat_samp_en
add wave -noupdate /UART_RX_TB/DUT/par_chk_en
add wave -noupdate /UART_RX_TB/DUT/strt_chk_en
add wave -noupdate /UART_RX_TB/DUT/stp_chk_en
add wave -noupdate /UART_RX_TB/DUT/deser_en
add wave -noupdate -expand -group FSM /UART_RX_TB/DUT/U_FSM_RX/dat_samp_en
add wave -noupdate -expand -group FSM /UART_RX_TB/DUT/U_FSM_RX/par_chk_en
add wave -noupdate -expand -group FSM /UART_RX_TB/DUT/U_FSM_RX/strt_chk_en
add wave -noupdate -expand -group FSM /UART_RX_TB/DUT/U_FSM_RX/stp_chk_en
add wave -noupdate -expand -group FSM /UART_RX_TB/DUT/U_FSM_RX/deser_en
add wave -noupdate -expand -group FSM /UART_RX_TB/DUT/U_FSM_RX/current_state
add wave -noupdate -expand -group FSM /UART_RX_TB/DUT/U_FSM_RX/next_state
add wave -noupdate -expand -group Sampling -color {Dark Orchid} /UART_RX_TB/DUT/U_Data_Sampling/sampled_bit_d
add wave -noupdate -expand -group Sampling -color {Medium Blue} /UART_RX_TB/DUT/sampled_bit
add wave -noupdate -expand -group PARITY /UART_RX_TB/DUT/U_parity_check/parity_calc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {107439 ps} 0}
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
WaveRestoreZoom {0 ps} {124089 ps}
