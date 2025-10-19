puts "*** File I/O & Regsub Lab
"
# open file for reading
set fh [open Interface.txt r+]
set file_data [read $fh]

# open file for writing
set fh2 [open tb3.txt w+]

# (\) to complete in the next line
set in_ports [list IN \
                   Load \
				   Up \
				   Down \
				   CLK ]
				   				   

set out_ports [list High \
                    Counter \
				    Low ]
										
foreach loop $in_ports {
regsub "$loop" $file_data "i_$loop;" file_data 
}	

foreach loop $out_ports {
regsub "$loop" $file_data "o_$loop;" file_data 
}

regsub 	-all "input" $file_data "reg" file_data 				

regsub 	-all "output" $file_data "wire" file_data 	

# write the edited data from file 1 to file 2(tb3)
puts $fh2 $file_data

close $fh 
close $fh2