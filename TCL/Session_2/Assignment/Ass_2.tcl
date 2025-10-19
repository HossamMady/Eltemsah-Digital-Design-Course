puts "**** Assignment2 ****"

set fh [open rtl.txt r+]
set file_data [read $fh]
close $fh 

set designs "$file_data"
# Convert the data into a list of filenames (one element per line)
set designs [split $file_data "\n"]

# Is there a better way for making this?
puts "$designs"

# Confirmation message
puts "Hossameldin Abdelnasser Ali Mady"