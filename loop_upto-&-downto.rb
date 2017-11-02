# # ruby 2.3.0
# # About - looping with "upto and downto"

# # UPTO
95.upto(100) { |num| print num, " " }
# # Prints 95 96 97 98 99 100

"L".upto("P") { |alp| print alp, " " }
# # Prints L M N O P






# # DOWNTO
95.downto(80) { |num| print num, " " }
# # Prints 95 96 97 98 99 100

"L".downto("A") { |alp| print alp, " " }
# # It will throw error because downto wont work for alphabets