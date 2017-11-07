# # ruby 2.3.0
# # About Variables and its Scope

class Computer

  $manufacturer = "Mango Computer, Inc." # global variable
  @@files = {hello: "Hello, world!"} # class variable
  PI = 3.141592653589793 # constant variable 

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

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.

puts "Constant value: #{Computer.display_constant}"
# PI constant is belongs to the Computer class. But constants are mostly used in modules 