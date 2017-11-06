# # ruby 2.3.0
# # About Class

# A class is just a way of organizing and producing objects with similar attributes and methods.
# We've defined our own class, Language, and created ruby, python, and javascript instances. Run the code to see how they work!

class Language
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