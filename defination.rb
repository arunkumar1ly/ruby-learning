# what are Literals?

# In Ruby, everything is an object, and objects have a standard way of being generated: via the new constructor method on a class:

user = User.new

# However, in some cases there are more natural - thus, literal - expressions to create basic objects, such as numbers, symbols, arrays, hashes, and ranges:

cost  = 19.95
array = [1, 2, 3]
range = 1..3
hash  = {
  :key => :value
}