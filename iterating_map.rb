# # ruby 2.3.0
# # About map

# iterates over each element, and returns the new object:
array = [1, 2, 3]

new_array_by_map = array.map do |i|
  i + 1
end  
puts new_array_by_map # => [2, 3, 4]

# How it different from each ?
# each loop itirate over each element, but returns the same object.
new_array_by_each = array.each do |i|
  i + 1
end  
puts new_array_by_each # => [1, 2, 3]