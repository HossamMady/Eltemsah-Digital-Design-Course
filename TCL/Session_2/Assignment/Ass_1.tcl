puts "**** Writing Verilog Block Interface ****"

# Module name
set modname "Up_Down_Counter"

# Port lists
set in_ports "IN Load Up Down CLK"
set in_ports_width "4 1 1 1 1"
set out_ports "High Counter Low"
set out_ports_width "1 4 1"

# Open output file
set fh [open "${modname}.v" w+]

# you have to use curly braces not "" it will give you error
puts $fh {module $modname(}

# Input ports
set total_inputs [llength $in_ports]
for {set i 0} {$i < $total_inputs} {incr i} {
    set port_name [lindex $in_ports $i]
    set port_width [lindex $in_ports_width $i]

    if {$port_width == 1} {
        set line "input     $port_name"
    } else {
        set width [expr {$port_width - 1}]
         set line "input \[$width : 0\] $port_name" 
        ##### Note: you can't use [] inside the "" without backslash \#####
        ##### "\" it prevent the effect of the special char of tcl inide the double quotes#####
        
        # we can't use set and append together
        # set line "input \[" append line $width ":0\] $port_name"
    }

    if {$i < [expr {$total_inputs - 1}] || [llength $out_ports] > 0} {
        append line ","
    }

    puts $fh $line
}

# Output ports
set total_outputs [llength $out_ports]
for {set i 0} {$i < $total_outputs} {incr i} {
    set port_name [lindex $out_ports $i]
    set port_width [lindex $out_ports_width $i]

    if {$port_width == 1} {
        set line "output     $port_name"
    } else {
        set width [expr {$port_width - 1}]
        set line "output \[$width : 0\] $port_name" 
        ##### Note: you can't use [] inside the "" without backslash \#####
        ##### "\" it prevent the effect of the sprcial char of tcl inide the double quotes#####
        
        # we can't use set and append together
        # set line "input \[" append line $width ":0\] $port_name"

    }

    if {$i < [expr {$total_outputs - 1}]} {
        append line ","
    }

    puts $fh $line
}

# End module
puts $fh ");"

# Close file
close $fh

# Confirmation message
puts "Hossameldin Abdelnasser Ali Mady"
