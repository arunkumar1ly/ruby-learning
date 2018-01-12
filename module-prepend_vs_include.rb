# # ruby 2.3.0
# # About module prepend and include

module FooBar
  def say
    puts "2 - Module"
    super
  end
end

class Foo
  prepend FooBar # execute this module's method first

  def say
    puts "1 - Implementing Class, FooBar prepended"
  end
end

class Bar
	include FooBar # it overwrites the FooBar module methods

	def say
		puts "3 - Implementing Class, FooBar included"
	end
end

Foo.new.say
Bar.new.say