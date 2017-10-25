# # ruby 2.3.0
# # About looping with loop

# # run the loop and break if the condition is true
i = 20
loop do 
	puts i
	i -= 1
	break if i <= 0
end

# # to run the loop for 20 times
for i in 1..20
	puts i
end