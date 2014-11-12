
def ask (question) 

	while true
		puts question
		response = gets.chomp

		if response == "yes" 
		return true
		elsif response == "no"
			return false
		else
		puts "Please answer 'yes' or 'no'." 
		end
	end
end



ask "Do you like cats?"
ask "Do you like eggs?"
ask "Do you like to eat eggs while petting cats?"
ask "Would you eat a worm for five dollars?"


puts "Thank you for your eggslent participation! We are done for right meow."