# # ruby 2.3.0
# # About modules

class Dog
	# # class method
	def self.running
		puts 'Class Method: ...... '
	end

	def bark
		puts "woof"
	end
end

# # here Puppy class inherits Dog class
class Puppy < Dog

end

# # calling class
Puppy.new.bark
Puppy.running