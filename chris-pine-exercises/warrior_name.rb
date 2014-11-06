

#What is your warrior name?

puts "What is your first name?"
first_name = gets.chomp
first_name = first_name.capitalize

puts "What is your last name?"
last_name = gets.chomp
last_name = last_name.capitalize

puts "Would you be a ninja, a viking, or an animal?"
warrior = gets.chomp

	if warrior == "ninja"
		puts "Hello there, master " + first_name + " 'the shadow lurker' " + last_name + ". Silent ruler of the night!"
	elsif warrior == "viking"
		puts "Hello there, " + first_name + " 'the pillager' " + last_name + ". Master drunkard and brute of all the lands!"
	else warrior == "animal"
		puts "Hello there, " + first_name + " 'the scratcher' " + last_name + ". Ultimate meower of death!!"
	end



