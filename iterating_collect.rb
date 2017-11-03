# # ruby 2.3.0
# # About "mutating any object by iterating using collect"

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# # Add your code below!
doubled_fibs = fibs.collect do |v|
  v + v
end


# # But, this will return [2, 2, 4, 6, 10, 16, 26, 42, 68, 110], because we are assinging the newly created array in the variable doubled_fibs
print "doubled_fibs = #{doubled_fibs}"

# # This will return the original fibs. This is because .collect returns a copy, but doesn't change (or mutate) the original fibs array.
print "fibs = #{fibs}"


# # =====

fibs.collect! do |v|
  v + v
end

# # This will return [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]. This is because, "!" in Ruby means, "this method could do something dangerous or unexpected!" In this case, it mutates the original array instead of creating a new one.
print "fibs = #{fibs}"

# # Note: we can't use "!" in each or select iterating methods.