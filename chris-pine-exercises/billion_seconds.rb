=begin 

Chris Pine - 12.2

One billion seconds! Find out the exact second you were born (if you can). 
Figure out when you will turn (or perhaps when you did turn) one billion seconds old. 
Then go mark your calendar.

3:10pm, August 27th, 1991

=end

time = Time.gm(1991, 8, 27, 15, 10)
time_2 = time + 1000000000

armandos_time = Time.gm(1980, 7, 19, 10, 00)
armandos_time_2 = armandos_time + 1000000000

puts time_2
puts armandos_time_2


=begin 
Happy birthday! Ask what year a person was born in, then the month, and then the day. 
Figure out how old they are, and give them a big SPANK! for each birthday they have had.
=end

puts "-" * 30
puts ""

puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp

puts "What day were you born in?"
day = gets.chomp

#find today's date and subtract the birthday from the current date to find the difference

today = Time.now
bday = Time.gm(year.to_i , month.to_i , day.to_i)

age = today - bday

# age returns your age.... in seconds - now must convert to years!

one_year_in_seconds = 60 * 60 * 24 * 365
age = age / one_year_in_seconds
age = age.to_i

puts "Your age is #{age} mudda effaaaaa"

age.times do |x|
	x = x+1
	puts "#{x} Spank"
end









