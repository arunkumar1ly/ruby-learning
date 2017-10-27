# # ruby 2.3.0
# # About "for looping"

# # to run the loop from 1 to 20

# # if you want to print out the all of the user's friends, without knowing how many friend names the user will put in ahead of time?

# # The solution: splat arguments. Splat arguments are arguments preceded by a *, which tells the program that the method can receive one or more arguments.

# # splat argument used as 2nd argument
def type_one_what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

# # splat argument used as 1nd argument
def type_two_what_up(*greeting, friends)
  greeting.each { |greeting| puts "#{greeting}, #{friends}!" }
end

puts "result of type_one_what_up method"
type_one_what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

puts "result of type_two_what_up method"
type_two_what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")