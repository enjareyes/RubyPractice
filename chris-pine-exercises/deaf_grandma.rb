

puts "Well hello, you young whipper snapper! Talk to your 'ol granny!"
input = gets.chomp

while input != "BYE"
		if input == input.upcase
			puts "OH! Not since back in the good 'ol days when I do do the splits"
			input = gets.chomp
		else input 
			puts "What sonny?! These ear holes ain't what they used to be."
			input = gets.chomp
  	end
end

if input == "BYE"
	puts "See ya later sonny. Don't forget to brush my cat on the way out"
end


