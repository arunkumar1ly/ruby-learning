# # ruby 2.3.0
# # About "procs"

# # PROC Example 1
multiples_of_3 = Proc.new do |n|
	n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)

# # --------------------------------------------------------------------
# # PROC Example 2

round_down = Proc.new do |v|
  v.floor
end

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
print floats.collect(&round_down)
# # ------------------------------------------------------------------------
# # Nice work! Calling a proc with a method isn't too tricky. However, there's an even easier way.
# # Unlike blocks, we can call procs directly by using Ruby's .call method. Check it out!

# # PROC Example 3
hi = Proc.new do 
  puts "Hello!"
end

hi.call