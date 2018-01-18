# # ruby 2.3.0
# # About modules

class Dog
	# # class method
	def self.running
		puts 'Class Method: ...... '
	end

	# # instance method 
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

# # ====================================
# # over writing the parent class method 
class Fish < Dog
  def bark
  	puts "it won't bark"
  end
end
# # It return's "it won't bark", because we overwritten the inherited bark method.
Fish.new.bark

# # ============
# # usinng super 

class Rabbit < Dog
	def bark
		puts "This way we can call the super class's method"
		super
	end
end

# # It return's "woof", because we overwritten and again we called super method - that will overwritten again "woof".
Rabbit.new.bark