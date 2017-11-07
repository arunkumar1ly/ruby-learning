# # ruby 2.3.0
# # About module include and extend

class Dog
	# # class method
	def self.running
		puts 'Class Method: ...... '
	end

	def bark
		puts "woof"
	end
end

module Cat
	def shout
		puts "miav miav"
	end
end

module Cow
	def sit
		puts "ha ha ha ..it is not sitting"
	end
end

# # here Puppy class inherits Dog class
class Puppy < Dog
	include Cat
	extend Cow
end

# # this will work, because we are inheriting one class into another 
Puppy.running
Puppy.new.bark

# # calling include modules method
Puppy.new.shout
# # calling extended modules method
Puppy.sit
# # this will throw error, because include will create only instance method
Puppy.shout

