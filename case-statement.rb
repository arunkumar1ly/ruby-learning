# # ruby 2.3.0
# # About "case statement"

puts "type the language, you want to know about"

language = gets.chomp

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end