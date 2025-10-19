
proc Avg {a} {
# to be able to use the array as argument (upvar $arg var_name)
upvar $a arr
# set the size (start counting from 1)
set size [array size arr]
# get all the keys in the array 
set keys [array names arr]
set sum 0

foreach loop $keys {
set sum [expr $sum + $arr($loop)]
} 

return [expr double($sum) / $size]
# added double to make it a float result 
# I can make either the num or den double to get a float result
}

array set Mohamed {Waves 70 Electronics 85 Control 65 Communication 78}
array set Mostafa {Waves 72 Electronics 77 Control 70 Communication 88}
array set Ahmed   {Waves 66 Electronics 80 Control 88 Communication 69}


#calculate the GPA of Mohamed
set Mohamed_GPA [Avg Mohamed]
puts "Mohamed Accumulative GPA is $Mohamed_GPA %"

#calculate the GPA of Mostafa 
set Mostafa_GPA [Avg Mostafa] 
puts "Mohamed Accumulative GPA is $Mostafa_GPA %"

#calculate the GPA of Ahmed
set Ahmed_GPA [Avg Ahmed] 
puts "Mohamed Accumulative GPA is $Ahmed_GPA %"










