# # ruby 2.3.0
# # About Lambda

# # lambda { puts "Hello!" }  Is just about the same as 
# # Proc.new { puts "Hello!" }

# # Lambda Example 1

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })
# # -------------------------------------------------------------------------------
# # Lambda Example 2
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {|v| v.to_sym}

symbols = strings.collect(&symbolize)
print symbols