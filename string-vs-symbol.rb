# # ruby 2.3.0
# # About "the difference between string and symbol"

# # symbol: immutable(immutable objects can be overwritten with same object id), object_id will be always same.

# # string: mutable(mutable objects can be changed after assignment), object_id will be different, event for the same string when we call for the second time. 

# # see the comparison methods 
# # We'll look up the letter "r" 100,000 times to see which process runs faster!

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."