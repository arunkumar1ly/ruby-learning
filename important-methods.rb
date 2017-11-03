# Well, .respond_to? takes a object and returns true if an object can receive that method and false otherwise.
puts [1, 2, 3].respond_to?(:push)
# return true, since you can call .push on an array object
puts [1, 2, 3].respond_to?(:to_sym)
# return false, you can't turn an array into a symbol.