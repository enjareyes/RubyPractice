
=begin  Angry boss. 

Write an angry boss program that rudely asks what you want. Whatever you answer, 
the angry boss should yell it back to you and then fire you. For example, if you type in 
I want a raise, it should yell back like this:
WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

=end

puts "WHAT YA WANT?"
answer = gets.chomp

def angryboss(answer)
	if answer != ""
		puts "Whadda ya mean, '#{answer}' ?! YOU'RE FIRED!"
	else
		puts "Speak up boy"
	end

	answer = gets.chomp

	puts "I SAID YOU'RE FIRED NOW GET OUT!!!"
end

angryboss(answer)