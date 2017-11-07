# # ruby 2.3.0
# # About Class

# A class is just a way of organizing and producing objects with similar attributes and methods.
# We've defined our own class, Language, and created ruby, python, and javascript instances. Run the code to see how they work!

class Language
	attr_reader :name # insteed of writing a method like below, we can use attr_reader to access any variable
  # def name
  # 	@name
  # end

  attr_writer :name # insteed of writing a method like below, we can use attr_reader to access any variable
  # def name=(value)
  # 	@name = value
	# end


	attr_accessor :creator # If we want to both read and write a particular variable, there's an even shorter shortcut than using attr_reader and attr_writer. We can use attr_accessor to make a variable readable and writeable in one fell swoop.

  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description

puts "Before updating the name variable value, it is - #{javascript.name} "
javascript.name="Tamil" # That name= might look funny, but you're allowed to put an = sign in a method name. That's just a Ruby convention saying, "hey, this method sets a value!"
puts "After updating the name variable value, it is - #{javascript.name} "

puts "Before updating the creator variable value, it is - #{javascript.creator} "
javascript.creator="Arunkumar"
puts "After updating the creator variable value, it is - #{javascript.creator} "