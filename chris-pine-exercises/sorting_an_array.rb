

puts "Hello, what would you like us to alphebatize? 
Type one word on everyline and hit enter on an empty line when you're done."

text = gets.chomp

text_array = []

while text != "" 
	text_array.push text
	text = gets.chomp
end

text_array = text_array.sort
puts text_array
