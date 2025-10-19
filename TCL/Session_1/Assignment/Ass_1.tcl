puts "****Bitwise Operations****"

set a 20
set b 5
set c 9

set var0 [expr $a & $c]
set var1 [expr $a | $b]
set var2 [expr $a ^ $a]

puts "Bitwise AND (a & c) = $var0"
puts "Bitwise OR (a | b) = $var1"
puts "Bitwise XOR (a ^ a) = $var2"

puts "Hossameldin Abdelnasser Ali Mady"