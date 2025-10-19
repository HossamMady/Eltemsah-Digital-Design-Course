puts "**** Assignment 2.0 ****"

set cities "cairo alexandria damietta dakahlia faiyum sohag aswan"
set Cities_new " "

foreach city $cities {
	
	set first_char [string toupper [string index $city 0]]
	set rest_of_char [string tolower [string range $city 1 end]]

	set new_name "$first_char$rest_of_char"
	lappend Cities_new $new_name 	
}

puts "$Cities_new"
# Confirmation message
puts "Hossameldin Abdelnasser Ali Mady"