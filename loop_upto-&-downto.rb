# # ruby 2.3.0
# # About - looping with "upto and downto"

# # UPTO
puts "print from 95 to 100"
95.upto(100) { |num| print num, " " }
# # Prints 95 96 97 98 99 100

puts "print from L to P"
"L".upto("P") { |alp| print alp, " " }
# # Prints L M N O P






# # DOWNTO
puts "print from 95 to 80 in the reverse order"
95.downto(80) { |num| print num, " " }
# # Prints 95 96 97 98 99 100

puts "It will throw error because downto wont work for alphabets"
"L".downto("A") { |alp| print alp, " " }
# # It will throw error because downto wont work for alphabets