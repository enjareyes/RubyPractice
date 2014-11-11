
#How many letters in your name?

puts "Hello there! What is your first name?"
first_name = gets.chomp

puts "Thank you, now what's your middle name?"
middle_name = gets.chomp

puts "Super, ok ready for your last!"
last_name =  gets.chomp

total = (first_name.length + middle_name.length + last_name.length)
total.to_i

puts "Your name has #{total} letters in it!"

