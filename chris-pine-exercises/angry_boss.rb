	
=begin
	
Write an angry boss program that rudely asks what you want. 
Whatever you answer, the angry boss should yell it back to you and then fire you. 
	
=end

puts "WHADDA YA WANT?"
response = gets.chomp

while response != "bye"
	puts "Blah blah blah. '#{response}' YOU'RE FIRED!!!"
	response = gets.chomp
end

if response == "bye"
	puts "GOOD, GET OUTTA HERE!"
end