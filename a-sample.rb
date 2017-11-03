# # ruby 2.3.0
# # About "filtering any object by iterating using select"

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

value_bigger_than_three = Proc.new do |key, value|
  if value > 3
  	puts "#{value} is bigger than three"
  else
  	puts "#{value} is smaller than three"
  end
end

# # select - it iterate through all the element and filters based on the condition inside the block.
selected_movie = movie_ratings.each(&value_bigger_than_three)

puts selected_movie