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

# # select - it iterate through all the element and filters based on the condition inside the block.
selected_movie = movie_ratings.select do |key, value|
	value > 3
end

puts selected_movie