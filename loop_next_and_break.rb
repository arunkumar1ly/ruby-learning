# # ruby 2.3.0
# # About next and break

# # run the loop and next if the condition is true without run the remaining load in the loop
next_arr = []
for i in 1..5
  next if i % 2 == 0
  next_arr << i
end
puts "next rest: #{next_arr}"

# # run the loop and break if the condition is true
i = 20
break_arr = []
loop do 
	break_arr<<i
	i -= 1
	break if i <= 0
end
print "break result: #{break_arr}"

# # used both next and break in this loop 
num = 20
loop do
  num -= 1
  next if num % 2 == 0
  print "#{num}"
  break if num <= 0
end