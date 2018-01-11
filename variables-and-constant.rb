# # ruby 2.3.0
# # About Variables and its Scope

$manufacturer = "Mango Computer, Inc." # global variable
INR = 100 # is act as a global constant, because it assigned outside the class
class Computer
  @@files = {hello: "Hello, world!"} # class variable
  PI = 3.141592653589793 # is act as a class constant, because it assigned inside the class

  def initialize(username, password)
    @username = username # instance variabble 
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end

  def self.display_constant
    PI
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)
puts "Instance Variable: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Global Variable: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Global Constant: #{INR}"
# $manufacturer is global! We can get it directly.

puts "Class Variable: #{Computer.display_files}"
# @@files belongs to the Computer class.

puts "Class Constant: #{Computer.display_constant}"
# PI constant is belongs to the Computer class. But constants are mostly used in modules 

# we can get the constant variable or class method like this also 
puts Computer::PI
puts Computer::display_constant