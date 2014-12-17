
# Ask the user what their favorite number is, then add 1 to it and suggest it as a better number.
puts "What is your favorite number?"
number = gets.chomp
number = number.to_i

number = number + 1

puts "Perhaps, you'd like to change to a bigger and better favorite like #{number}"
