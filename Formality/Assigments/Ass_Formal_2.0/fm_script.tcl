
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "/home/IC/Labs/Ass_Formal_2.0/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/Labs/Ass_Formal_2.0/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/Labs/Ass_Formal_2.0/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/Labs/Ass_Formal_2.0/syn/UART.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_sverilog -container Ref "/home/IC/Labs/Ass_Formal_1.0/rtl/UART_TX.sv"
read_sverilog -container Ref "/home/IC/Labs/Ass_Formal_1.0/rtl/Serializer.sv"
read_sverilog -container Ref "/home/IC/Labs/Ass_Formal_1.0/rtl/parity_Calc.sv"
read_sverilog -container Ref "/home/IC/Labs/Ass_Formal_1.0/rtl/MUX.sv"
read_sverilog -container Ref "/home/IC/Labs/Ass_Formal_1.0/rtl/mux2X1.sv"
read_sverilog -container Ref "/home/IC/Labs/Ass_Formal_1.0/rtl/FSM.sv"


# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design UART_TX
set_top UART_TX


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_sverilog -container Imp "/home/IC/Labs/Ass_Formal_1.0/rtl/UART_TX.sv"
read_sverilog -container Imp "/home/IC/Labs/Ass_Formal_1.0/rtl/Serializer.sv"
read_sverilog -container Imp "/home/IC/Labs/Ass_Formal_1.0/rtl/parity_Calc.sv"
read_sverilog -container Imp "/home/IC/Labs/Ass_Formal_1.0/rtl/MUX.sv"
read_sverilog -container Imp "/home/IC/Labs/Ass_Formal_1.0/rtl/mux2X1.sv"
read_sverilog -container Imp "/home/IC/Labs/Ass_Formal_1.0/rtl/FSM.sv"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design UART_TX
set_top UART_TX



###################################################################
#################### Implementation Container #####################
###################################################################

########################## Don't verify ###########################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SI
set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO


############################### contants #####################################

# all atpg enable (test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0


###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"

########################### Start GUI ############################# 
#start_gui

