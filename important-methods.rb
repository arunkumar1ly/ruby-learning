# Well, .respond_to? takes a object and returns true if an object can receive that method and false otherwise.
puts [1, 2, 3].respond_to?(:push)
# return true, since you can call .push on an array object
puts [1, 2, 3].respond_to?(:to_sym)
# return false, you can't turn an array into a symbol.

# We can pass a Ruby method name around with a symbol?
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)

#creates an array of symbols easily
array_of_symbols = %i{foo bar} 
puts array_of_symbols

#this also creates an array of symbols, but in a unnecessary way
array_of_symbols_1 = %w( it is less elegant to create arrays of symbols ).map( &:to_sym )
puts array_of_symbols_1