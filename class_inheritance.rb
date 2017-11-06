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

Rabbit.new.bark